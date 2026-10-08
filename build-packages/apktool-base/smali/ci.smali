.class public final synthetic Lci;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;


# instance fields
.field public final synthetic j:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

.field public final synthetic k:Ljava/lang/Iterable;

.field public final synthetic l:Lcom/google/android/datatransport/runtime/TransportContext;

.field public final synthetic m:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Ljava/lang/Iterable;Lcom/google/android/datatransport/runtime/TransportContext;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lci;->j:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    .line 5
    .line 6
    iput-object p2, p0, Lci;->k:Ljava/lang/Iterable;

    .line 7
    .line 8
    iput-object p3, p0, Lci;->l:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 9
    .line 10
    iput-wide p4, p0, Lci;->m:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final m()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lci;->j:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->c:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    .line 4
    .line 5
    check-cast v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lci;->k:Ljava/lang/Iterable;

    .line 11
    .line 12
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x0

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->O(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in "

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name"

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->h()Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 41
    .line 42
    .line 43
    :try_start_0
    invoke-virtual {v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    new-instance v3, Lcom/google/android/datatransport/runtime/scheduling/persistence/f;

    .line 55
    .line 56
    const/4 v6, 0x1

    .line 57
    invoke-direct {v3, v6, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/f;-><init>(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v2, v3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->P(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    const-string v2, "DELETE FROM events WHERE num_attempts >= 16"

    .line 64
    .line 65
    invoke-virtual {v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 76
    .line 77
    .line 78
    :goto_0
    iget-object v0, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->g:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 79
    .line 80
    invoke-interface {v0}, Lcom/google/android/datatransport/runtime/time/Clock;->a()J

    .line 81
    .line 82
    .line 83
    move-result-wide v2

    .line 84
    iget-wide v5, p0, Lci;->m:J

    .line 85
    .line 86
    add-long/2addr v2, v5

    .line 87
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/e;

    .line 88
    .line 89
    iget-object p0, p0, Lci;->l:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 90
    .line 91
    invoke-direct {v0, v2, v3, p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/e;-><init>(JLcom/google/android/datatransport/runtime/TransportContext;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->q(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    return-object v4

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 100
    .line 101
    .line 102
    throw p0
.end method
