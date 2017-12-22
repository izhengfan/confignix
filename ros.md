Create and init catkin workspace:

    mkdir -p ~/catkin_ws/src
    cd ~/catkin_ws
    catkin_make


Create a package in a workspace

    cd ~/catkin_ws/src
    catkin_create_pkg pkgname std_msgs roscpp rospy [other dependencies]
    cd ~/catkin_ws
    catkin_make
    
Record a bag with specific topics:

    rosbag record -O data_set_bag_filename /odo_raw /camera/image_gray
