.class public final synthetic Landroidx/media3/exoplayer/upstream/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/upstream/b;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/exoplayer/upstream/b;->j:I

    .line 2
    .line 3
    check-cast p1, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    .line 4
    .line 5
    check-cast p2, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    .line 6
    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget p0, p1, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->c:F

    .line 11
    .line 12
    iget p1, p2, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->c:F

    .line 13
    .line 14
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :pswitch_0
    iget p0, p1, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->a:I

    .line 20
    .line 21
    iget p1, p2, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->a:I

    .line 22
    .line 23
    sub-int/2addr p0, p1

    .line 24
    return p0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
