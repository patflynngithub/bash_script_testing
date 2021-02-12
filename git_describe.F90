program git_describe

character(len=*), parameter :: neptune_version = BUILD_ID
print '(A,1x,A)', 'This is NEPTUNE', neptune_version

end program git_describe



