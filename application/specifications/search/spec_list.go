package search

type SpecList struct{}

func (sl *SpecList) ListAll() []SpecifiesPeriod {
	return []SpecifiesPeriod{LastDaySpec{}, LastMonthSpec{}, LastSixHoursSpec{}, LastTwoDaysSpec{}, LastTwoWeeksSpec{}, LastWeeksSpec{}}
}
