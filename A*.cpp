#include <queue>
#include <iostream>
#include <bits/stdc++.h>

#include "opencv/cv.h"
#include "opencv2/core/core.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"

using namespace std;
using namespace cv;

typedef struct _State
{
	int x;
	int y;
	double g;
	double h;
	struct _State *prnt;
} State;


// The operator treats its field as max priority queue so the one thats is greater 
// gets on the starting of queue, now we want those state that have lesser f values 
// in the front, so 'b' should be greater than 'a' in this operator check if 'b' has lesser
// f value . Now this "less than operator" ideally gives true when 'a' is less than 'b'
// but as we want them the one with less f value to be treated as of more priority we have 
// inverted the sign of equality
bool operator<( State a, State b)
{
	// In general is to check for some attribute of State
	// return a.null_attribute < b.null_attribute;
	return a->g + a->h > b->g + b->h;
}

class PathPlanner
{
 
public:

	PathPlanner(State start, State end, Mat img)
	{
        cout<<"Planner Initiated"<<endl;

		this->start = start;
		this->end = end;
		this->img = img;
		imgCols = img.cols;
		imgRows = img.rows;

	}

	void getPath()
	{

	   	cout<<"Inside Getpath"<<endl;	
		Mat visited = img.clone();

		// Hybrid Astar Openlist Initiates:
		priority_queue< State, vector<State> > pq;
		start.g = 0;
		start.h = getHeuristic(start);
		start.prnt = NULL;
		
		pq.push(&start);
		visited.at<Vec3b>(start.x,start.y) = Vec3b(0,0,255);
	
	
		while(!pq.empty())
		{

			State *front = pq.top();
			pq.pop();

			// cout<<front.x<<"***"<<front.y<<"***"<<front.g+front.h<<endl;

			if( isReached(*front))
			{
				cout<<"Reached"<<endl;

				while( front->x != start->x && front->y != start->y )
				{
					img.at<Vec3b>(front->x, front->y) = Vec3b(255,0,0);
					front = front->prnt;
		        }  

				imshow("Path generated", img);
				waitKey(0);
				return ;
			}	


			for (int i = -connNeighbours/2; i <= connNeighbours/2; ++i)
				for (int j = -connNeighbours/2; j <= connNeighbours/2; ++j)
				{
					State *next = new State;
					next->x = front->x + i, next->y = front->y +j;

					if( visited.at<Vec3b>(next->x,next->y) != Vec3b(255,255,255) )
						continue;

					visited.at<Vec3b>(next->x,next->y) = Vec3b(0,0,255);

					next->g = front.g + getCost(*front, *next);
					next->h = getHeuristic(*next);
					next->prnt = front;	

					// cout<<next->prnt->x<<" "<<next->prnt->y<<endl; 
					// push creates a copy by value so no use of storing reference anyway
					pq.push(next);  

					// cout<<next.x<<" "<<next.y<<" "<<next.g+next.h<<endl;

				}
				
			imshow("Search Tree", visited);
			waitKey(1);
		

		}

	}

	double getCost( State curr, State next)
	{
		return sqrt(pow(curr.x-next.x,2)+pow(curr.y-next.y,2));

	}

	bool isReached(State curr )
	{
		if( curr.x == end.x && curr.y == end.y )
			return true;
		else
			return false;
	}


	void printPath(State curr)
	{

		if( curr.x == start.x && curr.y == start.y )
			return ;

	    img.at<Vec3b>(curr.x, curr.y) = Vec3b(255,0,0);
	    cout<<curr.prnt->x<<" "<<curr.prnt->y<<endl;
	    printPath( *(curr.prnt) );   
          
    }

    float getHeuristic( State curr)
    {
 		return sqrt(pow(curr.x-end.x,2)+pow(curr.y-end.y,2));
    }


private:
 	int connNeighbours = 3;
    Mat img;
    int imgCols, imgRows;
    State start, end;
    bool *visited;
    vector<State> path;

};

int main(int argc, char *argv[])
{
	string imagePath;
	cin>> imagePath;	
	cout<<imagePath<<endl;
	
	Mat img = imread(imagePath,1);
	imshow("Original Image",img);
	waitKey(0);

	// Starting State and ending State
	State start, end;  
	cout<<"Give start x and start y"<<endl; 
	cin >>start.x >>start.y; 
	cout<<"Give end x and end y"<<endl; 
	cin >>end.x >>end.y; 

	PathPlanner path(start, end, img);
	path.getPath(); 

	return 0;
}