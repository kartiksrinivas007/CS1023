BEGIN{}
        /#.*/ { next }
        {
        for (i=1; i<NF; i++)
        {
                sum[i]=sum[i]+$i
                printf "%d:",sum[i]
        }
        printf "\n"
        }
END{}
