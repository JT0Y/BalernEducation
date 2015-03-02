module AppointmentsHelper
	def month_calendar_td_options
    ->(start_date, current_calendar_date) {
      today = Time.zone.now.to_date
      td_class = ['past']

      td_class << 'today'  if today == current_calendar_date
      td_class << 'past'   if today > current_calendar_date
      td_class << 'future' if today < current_calendar_date
      td_class << 'start-date' if current_calendar_date.to_date == start_date.to_date
      td_class << 'prev-month' if start_date.month != current_calendar_date.month && current_calendar_date < start_date
      td_class << 'next-month' if start_date.month != current_calendar_date.month && current_calendar_date > start_date
      td_class << 'current-month' if start_date.month == current_calendar_date.month
      td_class << "wday-#{current_calendar_date.wday.to_s}"

      { class: td_class.join(' ') }
    }
  end
end