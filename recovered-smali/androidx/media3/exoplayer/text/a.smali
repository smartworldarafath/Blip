.class public final synthetic Landroidx/media3/exoplayer/text/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/text/a;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/exoplayer/text/a;->j:I

    .line 2
    .line 3
    check-cast p1, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object p0, Landroidx/media3/exoplayer/text/MergingCuesResolver;->b:Lcom/google/common/collect/Ordering;

    .line 9
    .line 10
    iget-wide p0, p1, Landroidx/media3/extractor/text/CuesWithTiming;->c:J

    .line 11
    .line 12
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :pswitch_0
    sget-object p0, Landroidx/media3/exoplayer/text/MergingCuesResolver;->b:Lcom/google/common/collect/Ordering;

    .line 18
    .line 19
    iget-wide p0, p1, Landroidx/media3/extractor/text/CuesWithTiming;->b:J

    .line 20
    .line 21
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
