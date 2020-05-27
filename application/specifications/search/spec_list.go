package search

// SpecList represents the list of all specifications
type SpecList struct{}

// ListAll returns the list of all specifications
func (sl *SpecList) ListAll() []SpecifiesPeriod {
	return []SpecifiesPeriod{LastDaySpec{}, LastMonthSpec{}, LastSixHoursSpec{}, LastTwoDaysSpec{}, LastTwoWeeksSpec{}, LastWeeksSpec{}}
}
