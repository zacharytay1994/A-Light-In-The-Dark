if state_ = states.play
{
	state_ = states.chasing
	moving_ = false
}
else if state_ = states.chasing
{
	state_ = states.play
	moving_ = false
}