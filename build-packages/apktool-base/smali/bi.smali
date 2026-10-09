.class public final synthetic Lbi;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

.field public final synthetic l:Lcom/google/android/datatransport/runtime/TransportContext;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;I)V
    .locals 0

    .line 1
    iput p3, p0, Lbi;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lbi;->k:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    .line 4
    .line 5
    iput-object p2, p0, Lbi;->l:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final m()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lbi;->j:I

    .line 2
    .line 3
    iget-object v1, p0, Lbi;->l:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 4
    .line 5
    iget-object p0, p0, Lbi;->k:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->c:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    .line 11
    .line 12
    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/d;

    .line 18
    .line 19
    invoke-direct {v0, p0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/d;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Lcom/google/android/datatransport/runtime/TransportContext;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->q(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/lang/Iterable;

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_0
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->c:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    .line 30
    .line 31
    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->h()Landroid/database/sqlite/SQLiteDatabase;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 38
    .line 39
    .line 40
    :try_start_0
    invoke-static {v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->n(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->h()Landroid/database/sqlite/SQLiteDatabase;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string v2, "SELECT 1 FROM events WHERE context_id = ? LIMIT 1"

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    filled-new-array {v1}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    new-instance v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;

    .line 68
    .line 69
    const/4 v2, 0x2

    .line 70
    invoke-direct {v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-static {p0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->P(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    check-cast p0, Ljava/lang/Boolean;

    .line 78
    .line 79
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    return-object p0

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 91
    .line 92
    .line 93
    throw p0

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
