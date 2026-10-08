.class public final synthetic Lai;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;


# instance fields
.field public final synthetic j:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

.field public final synthetic k:Lcom/google/android/datatransport/runtime/TransportContext;

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lai;->j:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    .line 5
    .line 6
    iput-object p2, p0, Lai;->k:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 7
    .line 8
    iput p3, p0, Lai;->l:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final m()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lai;->j:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    .line 4
    .line 5
    iget v1, p0, Lai;->l:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iget-object p0, p0, Lai;->k:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 13
    .line 14
    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->a(Lcom/google/android/datatransport/runtime/TransportContext;IZ)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method
