.class abstract Lcom/google/android/material/datepicker/UtcDates;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static a(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/android/material/datepicker/UtcDates;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x5

    .line 21
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-virtual {v0, v1, v2, p0}, Ljava/util/Calendar;->set(III)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public static b(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3

    .line 1
    const-string v0, "UTC"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method
