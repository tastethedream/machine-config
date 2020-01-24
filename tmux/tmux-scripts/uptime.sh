#!/bin/bash
uptime | awk -F'( |,|:)+' '{print $6,"hours,", $7,"minutes",$8,$9}'
