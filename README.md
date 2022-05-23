# Information-Security-Management-Project

Data Leakage Detection and Prevention Using Probability Based Approach


Abstract:

Current statistics from different security association research firms and government organizations recommend that there has been a fast growth of data leaks in past 8 years and as present, the world
for the most part relies upon exchange of information i.e. transfer of data from one individual to another individual which is also known as distributary system. The data that is sent from the
distributor to the client is confidential, so the data is distributed only between the distributor and the trusted third parties. The data sent by the distributor must be secured, private and confidential
and must not be replicated as the data imparted with the trusted third parties are confidential and profoundly significant. In certain events the data distributed by the distributor are duplicated by
different agents who cause an enormous harm to the institute and this process of losing the data is known as data leakage. The data leakage must be detected at an early stage in order to prevent the
data from being open source. This project deals with shielding the data from being outsourced by giving a special inscription to the sensitive data so that it cannot be replicated.


Problem Statement and Objective:

Throughout the course of doing business, once in a while sensitive data must be given over to supposedly trusted third parties. For instance, an organization may have partnerships with different
organizations that require sharing of client data. Another venture may redistribute its data processing, so data must be given to various other organizations. The owner of the data is the
distributor and the supposedly trusted third parties are the agents. At that point, further data is given by the distributor to the trusted third party of the enterprise by utilizing this application. Our
aim is to build an application that will additionally monitor if on the off chance any data has been leaked by the agent of the enterprise. It likewise helps in discovering the guilt of an agent from the
given set of agents which has leaked the data using probability distribution.


Proposed Method:

The model developed is used for calculating the probability of an agent being a leaker. For distributing objects to the agents, a key based approach is used where the agent has to request the
key access to the admin. Records of this are maintained to enhance the chances of identifying the leaker of the data. If we encounter a data set that is leaked, we calculate the probability of each
agent leaking the set.
Let us consider that a leaked data set is S = {t1, t2, t3} Let two agents U1 and U2 have access to the sets:
U1 = {t1, t2}
U2 = {t1, t3}
For each file leaked, we consider a predefined probability p that the file key was guessed. So the probability that it was leaked by any one of the agents is 1-p.
For t1, both U1 and U2 have access to it. So probability that U1 leaked it is (1-p)/2. So, the probability that U1 didn’t leak t1 is 1-[(1-p)/2].
For t2, only U1 can leak it. So probability = 1-p. So, the probability that U1 didn’t leak t2 is 1-(1-p).
For t3, probability that U1 didn’t leak t3 is 1.
The probability that U1 didn’t leak either of them: P = [1 – (1-p)/2]*[1 – (1-p)] * 1
This determines the probability of U1 being a leaker as 1 – P.
In general for an agent the probability that they didn’t leak either of them:
P = [1 – (1-p)/N1]* [1 – (1-p)/N2]*…. [1 – (1-p)/Ni] Where,
i: Number of leaked files the current agent has accessed
Ni: Number of agents that have access to the file i
