.class final Lnet/blip/android/transferworker/TransferService$onStartJob$1$notifJob$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation


# instance fields
.field public final synthetic j:Lnet/blip/android/transferworker/TransferService;

.field public final synthetic k:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Lnet/blip/android/transferworker/TransferService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1$notifJob$1$1;->j:Lnet/blip/android/transferworker/TransferService;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1$notifJob$1$1;->k:Landroid/app/job/JobParameters;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lkotlin/Pair;

    .line 2
    .line 3
    iget-object p2, p1, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p2, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    iget-object p1, p1, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Landroid/app/Notification;

    .line 14
    .line 15
    iget-object v0, p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1$notifJob$1$1;->j:Lnet/blip/android/transferworker/TransferService;

    .line 16
    .line 17
    iget-object p0, p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1$notifJob$1$1;->k:Landroid/app/job/JobParameters;

    .line 18
    .line 19
    invoke-static {v0, p0, p2, p1}, Lac;->r(Lnet/blip/android/transferworker/TransferService;Landroid/app/job/JobParameters;ILandroid/app/Notification;)V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method
