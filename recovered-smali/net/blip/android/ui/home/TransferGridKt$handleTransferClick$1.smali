.class final Lnet/blip/android/ui/home/TransferGridKt$handleTransferClick$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.ui.home.TransferGridKt"
    f = "TransferGrid.kt"
    l = {
        0xaa,
        0xba
    }
    m = "handleTransferClick"
    v = 0x2
.end annotation


# instance fields
.field public m:Landroid/content/Context;

.field public n:Landroidx/navigation/NavController;

.field public synthetic o:Ljava/lang/Object;

.field public p:I


# virtual methods
.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lnet/blip/android/ui/home/TransferGridKt$handleTransferClick$1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lnet/blip/android/ui/home/TransferGridKt$handleTransferClick$1;->p:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lnet/blip/android/ui/home/TransferGridKt$handleTransferClick$1;->p:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-static {p1, p1, p1, p1, p0}, Lnet/blip/android/ui/home/TransferGridKt;->b(Landroid/content/Context;Landroidx/navigation/NavController;Lnet/blip/libblip/frontend/Transfer;Lnet/blip/libblip/Flavor;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
