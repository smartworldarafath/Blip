.class public abstract Landroidx/compose/material/RippleKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

.field public static final b:Landroidx/compose/material/RippleNodeFactory;

.field public static final c:Landroidx/compose/material/RippleNodeFactory;

.field public static final d:Landroidx/compose/material/ripple/RippleAlpha;

.field public static final e:Landroidx/compose/material/ripple/RippleAlpha;

.field public static final f:Landroidx/compose/material/ripple/RippleAlpha;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lvc;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lvc;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Landroidx/compose/material/RippleKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 14
    .line 15
    new-instance v0, Landroidx/compose/material/RippleNodeFactory;

    .line 16
    .line 17
    sget-wide v1, Landroidx/compose/ui/graphics/Color;->h:J

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 21
    .line 22
    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/compose/material/RippleNodeFactory;-><init>(ZFJ)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Landroidx/compose/material/RippleKt;->b:Landroidx/compose/material/RippleNodeFactory;

    .line 26
    .line 27
    new-instance v0, Landroidx/compose/material/RippleNodeFactory;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/compose/material/RippleNodeFactory;-><init>(ZFJ)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Landroidx/compose/material/RippleKt;->c:Landroidx/compose/material/RippleNodeFactory;

    .line 34
    .line 35
    new-instance v0, Landroidx/compose/material/ripple/RippleAlpha;

    .line 36
    .line 37
    const v1, 0x3e23d70a    # 0.16f

    .line 38
    .line 39
    .line 40
    const v2, 0x3e75c28f    # 0.24f

    .line 41
    .line 42
    .line 43
    const v3, 0x3da3d70a    # 0.08f

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/material/ripple/RippleAlpha;-><init>(FFFF)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Landroidx/compose/material/RippleKt;->d:Landroidx/compose/material/ripple/RippleAlpha;

    .line 50
    .line 51
    new-instance v0, Landroidx/compose/material/ripple/RippleAlpha;

    .line 52
    .line 53
    const v1, 0x3df5c28f    # 0.12f

    .line 54
    .line 55
    .line 56
    const v2, 0x3d23d70a    # 0.04f

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v3, v1, v2, v1}, Landroidx/compose/material/ripple/RippleAlpha;-><init>(FFFF)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Landroidx/compose/material/RippleKt;->e:Landroidx/compose/material/ripple/RippleAlpha;

    .line 63
    .line 64
    new-instance v0, Landroidx/compose/material/ripple/RippleAlpha;

    .line 65
    .line 66
    const v4, 0x3dcccccd    # 0.1f

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, v3, v1, v2, v4}, Landroidx/compose/material/ripple/RippleAlpha;-><init>(FFFF)V

    .line 70
    .line 71
    .line 72
    sput-object v0, Landroidx/compose/material/RippleKt;->f:Landroidx/compose/material/ripple/RippleAlpha;

    .line 73
    .line 74
    return-void
.end method

.method public static a(IJZ)Landroidx/compose/foundation/IndicationNodeFactory;
    .locals 3

    .line 1
    and-int/lit8 v0, p0, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    :cond_0
    and-int/lit8 v0, p0, 0x2

    .line 7
    .line 8
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    move v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/high16 v0, 0x41c00000    # 24.0f

    .line 15
    .line 16
    :goto_0
    and-int/lit8 p0, p0, 0x4

    .line 17
    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    sget-wide p1, Landroidx/compose/ui/graphics/Color;->h:J

    .line 21
    .line 22
    :cond_2
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_4

    .line 27
    .line 28
    sget-wide v1, Landroidx/compose/ui/graphics/Color;->h:J

    .line 29
    .line 30
    invoke-static {p1, p2, v1, v2}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_4

    .line 35
    .line 36
    if-eqz p3, :cond_3

    .line 37
    .line 38
    sget-object p0, Landroidx/compose/material/RippleKt;->b:Landroidx/compose/material/RippleNodeFactory;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_3
    sget-object p0, Landroidx/compose/material/RippleKt;->c:Landroidx/compose/material/RippleNodeFactory;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_4
    new-instance p0, Landroidx/compose/material/RippleNodeFactory;

    .line 45
    .line 46
    invoke-direct {p0, p3, v0, p1, p2}, Landroidx/compose/material/RippleNodeFactory;-><init>(ZFJ)V

    .line 47
    .line 48
    .line 49
    return-object p0
.end method
