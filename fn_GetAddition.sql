create function fn_GetAddition
(
	@Value1 int,
	@Value2 int
)
Returns int
As
Begin
	return @value1 + @Value2
End