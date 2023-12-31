// Generated by gencpp from file lab03_example/Num.msg
// DO NOT EDIT!


#ifndef LAB03_EXAMPLE_MESSAGE_NUM_H
#define LAB03_EXAMPLE_MESSAGE_NUM_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace lab03_example
{
template <class ContainerAllocator>
struct Num_
{
  typedef Num_<ContainerAllocator> Type;

  Num_()
    : a(0)  {
    }
  Num_(const ContainerAllocator& _alloc)
    : a(0)  {
  (void)_alloc;
    }



   typedef int64_t _a_type;
  _a_type a;





  typedef boost::shared_ptr< ::lab03_example::Num_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lab03_example::Num_<ContainerAllocator> const> ConstPtr;

}; // struct Num_

typedef ::lab03_example::Num_<std::allocator<void> > Num;

typedef boost::shared_ptr< ::lab03_example::Num > NumPtr;
typedef boost::shared_ptr< ::lab03_example::Num const> NumConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lab03_example::Num_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lab03_example::Num_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lab03_example::Num_<ContainerAllocator1> & lhs, const ::lab03_example::Num_<ContainerAllocator2> & rhs)
{
  return lhs.a == rhs.a;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lab03_example::Num_<ContainerAllocator1> & lhs, const ::lab03_example::Num_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lab03_example

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::lab03_example::Num_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lab03_example::Num_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lab03_example::Num_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lab03_example::Num_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lab03_example::Num_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lab03_example::Num_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lab03_example::Num_<ContainerAllocator> >
{
  static const char* value()
  {
    return "019706110004b728d56d8baaa8e32797";
  }

  static const char* value(const ::lab03_example::Num_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x019706110004b728ULL;
  static const uint64_t static_value2 = 0xd56d8baaa8e32797ULL;
};

template<class ContainerAllocator>
struct DataType< ::lab03_example::Num_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lab03_example/Num";
  }

  static const char* value(const ::lab03_example::Num_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lab03_example::Num_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 a\n"
;
  }

  static const char* value(const ::lab03_example::Num_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lab03_example::Num_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.a);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Num_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lab03_example::Num_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lab03_example::Num_<ContainerAllocator>& v)
  {
    s << indent << "a: ";
    Printer<int64_t>::stream(s, indent + "  ", v.a);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LAB03_EXAMPLE_MESSAGE_NUM_H
