function run-submission
    docker run --rm -it -v (pwd):/project -w /project/gcc9-3 302-runner:latest bash -c "cmake .. && make -j4 && $argv"
end
