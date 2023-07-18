// Generated by gencpp from file lab03_task/rotmat2quatRequest.msg
// DO NOT EDIT!


#ifndef LAB03_TASK_MESSAGE_ROTMAT2QUATREQUEST_H
#define LAB03_TASK_MESSAGE_ROTMAT2QUATREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Float64MultiArray.h>

namespace lab03_task
{
template <class ContainerAllocator>
struct rotmat2quatRequest_
{
  typedef rotmat2quatRequest_<ContainerAllocator> Type;

  rotmat2quatRequest_()
    : R()  {
    }
  rotmat2quatRequest_(const ContainerAllocator& _alloc)
    : R(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Float64MultiArray_<ContainerAllocator>  _R_type;
  _R_type R;





  typedef boost::shared_ptr< ::lab03_task::rotmat2quatRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lab03_task::rotmat2quatRequest_<ContainerAllocator> const> ConstPtr;

}; // struct rotmat2quatRequest_

typedef ::lab03_task::rotmat2quatRequest_<std::allocator<void> > rotmat2quatRequest;

typedef boost::shared_ptr< ::lab03_task::rotmat2quatRequest > rotmat2quatRequestPtr;
typedef boost::shared_ptr< ::lab03_task::rotmat2quatRequest const> rotmat2quatRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lab03_task::rotmat2quatRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lab03_task::rotmat2quatRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lab03_task::rotmat2quatRequest_<ContainerAllocator1> & lhs, const ::lab03_task::rotmat2quatRequest_<ContainerAllocator2> & rhs)
{
  return lhs.R == rhs.R;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lab03_task::rotmat2quatRequest_<ContainerAllocator1> & lhs, const ::lab03_task::rotmat2quatRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lab03_task

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::lab03_task::rotmat2quatRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lab03_task::rotmat2quatRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lab03_task::rotmat2quatRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lab03_task::rotmat2quatRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lab03_task::rotmat2quatRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lab03_task::rotmat2quatRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lab03_task::rotmat2quatRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3e0e4ce6edd7e9bcf84fbbac27fd3baf";
  }

  static const char* value(const ::lab03_task::rotmat2quatRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3e0e4ce6edd7e9bcULL;
  static const uint64_t static_value2 = 0xf84fbbac27fd3bafULL;
};

template<class ContainerAllocator>
struct DataType< ::lab03_task::rotmat2quatRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lab03_task/rotmat2quatRequest";
  }

  static const char* value(const ::lab03_task::rotmat2quatRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lab03_task::rotmat2quatRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Float64MultiArray R\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float64MultiArray\n"
"# Please look at the MultiArrayLayout message definition for\n"
"# documentation on all multiarrays.\n"
"\n"
"MultiArrayLayout  layout        # specification of data layout\n"
"float64[]         data          # array of data\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/MultiArrayLayout\n"
"# The multiarray declares a generic multi-dimensional array of a\n"
"# particular data type.  Dimensions are ordered from outer most\n"
"# to inner most.\n"
"\n"
"MultiArrayDimension[] dim # Array of dimension properties\n"
"uint32 data_offset        # padding elements at front of data\n"
"\n"
"# Accessors should ALWAYS be written in terms of dimension stride\n"
"# and specified outer-most dimension first.\n"
"# \n"
"# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]\n"
"#\n"
"# A standard, 3-channel 640x480 image with interleaved color channels\n"
"# would be specified as:\n"
"#\n"
"# dim[0].label  = \"height\"\n"
"# dim[0].size   = 480\n"
"# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)\n"
"# dim[1].label  = \"width\"\n"
"# dim[1].size   = 640\n"
"# dim[1].stride = 3*640 = 1920\n"
"# dim[2].label  = \"channel\"\n"
"# dim[2].size   = 3\n"
"# dim[2].stride = 3\n"
"#\n"
"# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/MultiArrayDimension\n"
"string label   # label of given dimension\n"
"uint32 size    # size of given dimension (in type units)\n"
"uint32 stride  # stride of given dimension\n"
;
  }

  static const char* value(const ::lab03_task::rotmat2quatRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lab03_task::rotmat2quatRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.R);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct rotmat2quatRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lab03_task::rotmat2quatRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lab03_task::rotmat2quatRequest_<ContainerAllocator>& v)
  {
    s << indent << "R: ";
    s << std::endl;
    Printer< ::std_msgs::Float64MultiArray_<ContainerAllocator> >::stream(s, indent + "  ", v.R);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LAB03_TASK_MESSAGE_ROTMAT2QUATREQUEST_H
