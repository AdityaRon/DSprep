**A jar holds 1000 coins. Out of all of the coins, 999 are fair and one is double-sided with two heads. Picking a coin at random, you toss the coin ten times.
Given that you see 10 heads, what is the probability that the coin is double headed and the probability that the next toss of the coin is also a head?**


When you flip the coin again, the coin could be unfair or fair. With the given information, we have to decide

Probability of the coin being fair  𝑃(𝐹|Flips) 
Probability of the coin being unfair  𝑃(𝑈|Flips) 

After we get this information, the probability of the next coin turning up heads is simply
𝑃(𝐻𝑓)×𝑃(𝐹|Flips)+𝑃(𝐻𝑢)×𝑃(𝑈|Flips) 

Using Bayes rule,

𝑃(𝐹|Flips)=𝑃(Flips|𝐹)×𝑃(𝐹)𝑃(Flips) 

𝑃(𝐹|Flips)=0.510×.9990.510×.999+1×.001 

This equals  0.493 

Now we find  𝑃(𝑈|Flips)  in the same manner. Or just  1−𝑃(𝐹|Flips) 

𝑃(𝑈|Flips)=𝑃(Flips|𝑈)×𝑃(𝑈)𝑃(Flips) 

𝑃(𝑈|Flips)=1×.0010.510×.999+1×.001 

This equals  0.507 

We plug this in our formula and we get

0.5×0.493+1×0.507=0.753  or  75.3
