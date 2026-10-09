.class final Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.ui.util.UmbrellaContentPickerKt"
    f = "UmbrellaContentPicker.kt"
    l = {
        0x96,
        0x97,
        0x9b
    }
    m = "clipboardLocations"
    v = 0x2
.end annotation


# instance fields
.field public m:Lnet/blip/shared/ScratchFileWriter;

.field public n:Landroid/content/ClipData;

.field public o:Ljava/util/List;

.field public p:Ljava/lang/Object;

.field public q:I

.field public r:I

.field public synthetic s:Ljava/lang/Object;

.field public t:I


# virtual methods
.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->s:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->t:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->t:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-static {p1, p1, p0}, Lnet/blip/android/ui/util/UmbrellaContentPickerKt;->a(Landroid/content/Context;Lnet/blip/shared/ScratchFileWriter;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
