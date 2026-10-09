.class public abstract Lcom/google/accompanist/drawablepainter/DrawablePainterKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->k:Lkotlin/LazyThreadSafetyMode;

    .line 2
    .line 3
    new-instance v1, Lj6;

    .line 4
    .line 5
    const/16 v2, 0x11

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lj6;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/google/accompanist/drawablepainter/DrawablePainterKt;->a:Lkotlin/Lazy;

    .line 15
    .line 16
    return-void
.end method

.method public static final a(Landroid/graphics/drawable/Drawable;)J
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    int-to-float v0, v0

    .line 18
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    int-to-float p0, p0

    .line 23
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    int-to-long v0, v0

    .line 28
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    int-to-long v2, p0

    .line 33
    const/16 p0, 0x20

    .line 34
    .line 35
    shl-long/2addr v0, p0

    .line 36
    const-wide v4, 0xffffffffL

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    and-long/2addr v2, v4

    .line 42
    or-long/2addr v0, v2

    .line 43
    return-wide v0

    .line 44
    :cond_0
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    return-wide v0
.end method
