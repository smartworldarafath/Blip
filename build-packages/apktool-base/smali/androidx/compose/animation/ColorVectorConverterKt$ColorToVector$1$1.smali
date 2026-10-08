.class final Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/graphics/Color;",
        "Landroidx/compose/animation/core/AnimationVector4D;",
        ">;"
    }
.end annotation


# static fields
.field public static final k:Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;->k:Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroidx/compose/ui/graphics/Color;

    .line 2
    .line 3
    iget-wide p0, p1, Landroidx/compose/ui/graphics/Color;->a:J

    .line 4
    .line 5
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->x:Landroidx/compose/ui/graphics/colorspace/Oklab;

    .line 6
    .line 7
    invoke-static {p0, p1, v0}, Landroidx/compose/ui/graphics/Color;->a(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->h(J)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->g(J)F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->e(J)F

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->d(J)F

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    new-instance p1, Landroidx/compose/animation/core/AnimationVector4D;

    .line 28
    .line 29
    invoke-direct {p1, p0, v0, v1, v2}, Landroidx/compose/animation/core/AnimationVector4D;-><init>(FFFF)V

    .line 30
    .line 31
    .line 32
    return-object p1
.end method
