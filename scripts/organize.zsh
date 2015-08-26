#!/bin/zsh

#All directories

function movimg()
{
  if ( ls | grep png )
}

function flacdir()
{
  for i in ./*
  do
    if ( file "$i" | grep directory )
    then
      cd "$i"
      if ( ls | grep flac )
      then
        pwd
        ls
        echo "\n"
      else
        flacdir
      fi
      cd ..
    fi
  done
}

flacdir
