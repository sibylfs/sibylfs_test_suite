This test-suite tests the commands:

- open
- close
- read
- write
- pread
- pwrite
- lseek

these commands all use file-descriptors and are hard to
test in isolation. There are the following trace-files

 - adhoc_pread_tests-int.trace   
   contains tests for read and pread

 - adhoc_pwrite_tests-int.trace
   contains tests for write and pwrite

 - adhoc_lseek_tests-int.trace
   contains tests for lseek

 - adhoc_open_tests-int.trace
   contains tests for open and close

 - adhoc_open_multiple_tests-check-os.trace
   contains tests for open and close when multiple
   file-descriptors are used at the same time. It can
   only be used with check, because the posix-tool does
   not model the file-descriptor ids of multiple processes
   correctly.

 - adhoc_file_descriptor_change_tests-int.trace
   These tests check whether a file-descriptor behaves correctly
   if the underlying files are modified (e.g. deleted, renamed or
   simply its content changed), while the file-descriptor
   is open.

