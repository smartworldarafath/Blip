.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/c;->a:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/c;->a:J

    .line 2
    .line 3
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    sget-object p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->o:Lcom/google/android/datatransport/Encoding;

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    new-array v2, p0, [Ljava/lang/String;

    .line 9
    .line 10
    const-string v3, "SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1"

    .line 11
    .line 12
    invoke-virtual {p1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :try_start_0
    sget-object v2, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->o:Lcom/google/android/datatransport/Encoding;

    .line 17
    .line 18
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    new-instance p0, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$Builder;

    .line 26
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    const-wide/16 v4, 0x0

    .line 31
    .line 32
    iput-wide v4, p0, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$Builder;->a:J

    .line 33
    .line 34
    iput-wide v4, p0, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$Builder;->b:J

    .line 35
    .line 36
    iput-wide v2, p0, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$Builder;->a:J

    .line 37
    .line 38
    iput-wide v0, p0, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$Builder;->b:J

    .line 39
    .line 40
    new-instance v0, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;

    .line 41
    .line 42
    iget-wide v1, p0, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$Builder;->a:J

    .line 43
    .line 44
    iget-wide v3, p0, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$Builder;->b:J

    .line 45
    .line 46
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;-><init>(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 55
    .line 56
    .line 57
    throw p0
.end method
