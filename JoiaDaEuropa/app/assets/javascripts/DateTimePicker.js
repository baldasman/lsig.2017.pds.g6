/**
 * Created by pds on 16-05-2017.
 */
<script type="text/javascript">
    $(function () {
        $('#datepicker').datetimepicker({
            defaultDate: "11/1/2013",
            disabledDates: [
                moment("12/25/2013"),
                new Date(2013, 11 - 1, 21),
                "11/22/2013 00:53"
            ]
        });
    });
</script>