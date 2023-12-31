// Generated by gencpp from file lab03_example_srv/point_rotRequest.msg
// DO NOT EDIT!


#ifndef LAB03_EXAMPLE_SRV_MESSAGE_POINT_ROTREQUEST_H
#define LAB03_EXAMPLE_SRV_MESSAGE_POINT_ROTREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Quaternion.h>
#include <geometry_msgs/Point.h>

namespace lab03_example_srv
{
template <class ContainerAllocator>
struct point_rotRequest_
{
  typedef point_rotRequest_<ContainerAllocator> Type;

  point_rotRequest_()
    : q()
    , p()  {
    }
  point_rotRequest_(const ContainerAllocator& _alloc)
    : q(_alloc)
    , p(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Quaternion_<ContainerAllocator>  _q_type;
  _q_type q;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _p_type;
  _p_type p;





  typedef boost::shared_ptr< ::lab03_example_srv::point_rotRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lab03_example_srv::point_rotRequest_<ContainerAllocator> const> ConstPtr;

}; // struct point_rotRequest_

typedef ::lab03_example_srv::point_rotRequest_<std::allocator<void> > point_rotRequest;

typedef boost::shared_ptr< ::lab03_example_srv::point_rotRequest > point_rotRequestPtr;
typedef boost::shared_ptr< ::lab03_example_srv::point_rotRequest const> point_rotRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lab03_example_srv::point_rotRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lab03_example_srv::point_rotRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lab03_example_srv::point_rotRequest_<ContainerAllocator1> & lhs, const ::lab03_example_srv::point_rotRequest_<ContainerAllocator2> & rhs)
{
  return lhs.q == rhs.q &&
    lhs.p == rhs.p;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lab03_example_srv::point_rotRequest_<ContainerAllocator1> & lhs, const ::lab03_example_srv::point_rotRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lab03_example_srv

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::lab03_example_srv::point_rotRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lab03_example_srv::point_rotRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lab03_example_srv::point_rotRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lab03_example_srv::point_rotRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lab03_example_srv::point_rotRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lab03_example_srv::point_rotRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lab03_example_srv::point_rotRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a3cba7937cc685d3a715e5d5e3ce90f4";
  }

  static const char* value(const ::lab03_example_srv::point_rotRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa3cba7937cc685d3ULL;
  static const uint64_t static_value2 = 0xa715e5d5e3ce90f4ULL;
};

template<class ContainerAllocator>
struct DataType< ::lab03_example_srv::point_rotRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lab03_example_srv/point_rotRequest";
  }

  static const char* value(const ::lab03_example_srv::point_rotRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lab03_example_srv::point_rotRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Quaternion q\n"
"geometry_msgs/Point p\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::lab03_example_srv::point_rotRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lab03_example_srv::point_rotRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.q);
      stream.next(m.p);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct point_rotRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lab03_example_srv::point_rotRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lab03_example_srv::point_rotRequest_<ContainerAllocator>& v)
  {
    s << indent << "q: ";
    s << std::endl;
    Printer< ::geometry_msgs::Quaternion_<ContainerAllocator> >::stream(s, indent + "  ", v.q);
    s << indent << "p: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.p);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LAB03_EXAMPLE_SRV_MESSAGE_POINT_ROTREQUEST_H
