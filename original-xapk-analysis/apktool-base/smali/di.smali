.class public final synthetic Ldi;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;


# instance fields
.field public final synthetic j:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

.field public final synthetic k:Lcom/google/android/datatransport/runtime/TransportContext;

.field public final synthetic l:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldi;->j:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    .line 5
    .line 6
    iput-object p2, p0, Ldi;->k:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 7
    .line 8
    iput-wide p3, p0, Ldi;->l:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final m()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Ldi;->j:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->c:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->g:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/android/datatransport/runtime/time/Clock;->a()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    iget-wide v4, p0, Ldi;->l:J

    .line 12
    .line 13
    add-long/2addr v2, v4

    .line 14
    check-cast v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/e;

    .line 20
    .line 21
    iget-object p0, p0, Ldi;->k:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 22
    .line 23
    invoke-direct {v0, v2, v3, p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/e;-><init>(JLcom/google/android/datatransport/runtime/TransportContext;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->q(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method
