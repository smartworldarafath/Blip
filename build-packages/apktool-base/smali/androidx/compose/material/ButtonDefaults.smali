.class public abstract Landroidx/compose/material/ButtonDefaults;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public static final b:F

.field public static final c:F

.field public static final d:Landroidx/compose/foundation/layout/PaddingValuesImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 2
    .line 3
    const/high16 v1, 0x41800000    # 16.0f

    .line 4
    .line 5
    const/high16 v2, 0x41000000    # 8.0f

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v1, v2}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroidx/compose/material/ButtonDefaults;->a:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 11
    .line 12
    const/high16 v0, 0x42800000    # 64.0f

    .line 13
    .line 14
    sput v0, Landroidx/compose/material/ButtonDefaults;->b:F

    .line 15
    .line 16
    const/high16 v0, 0x42100000    # 36.0f

    .line 17
    .line 18
    sput v0, Landroidx/compose/material/ButtonDefaults;->c:F

    .line 19
    .line 20
    new-instance v0, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 21
    .line 22
    invoke-direct {v0, v2, v2, v2, v2}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Landroidx/compose/material/ButtonDefaults;->d:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 26
    .line 27
    return-void
.end method

.method public static a(JLandroidx/compose/runtime/Composer;I)Landroidx/compose/material/ButtonColors;
    .locals 9

    .line 1
    sget-wide v1, Landroidx/compose/ui/graphics/Color;->g:J

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    invoke-static {p2}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->e()J

    .line 12
    .line 13
    .line 14
    move-result-wide p0

    .line 15
    :cond_0
    move-wide v3, p0

    .line 16
    invoke-static {p2}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->d()J

    .line 21
    .line 22
    .line 23
    move-result-wide p0

    .line 24
    const p3, 0x3ec28f5c    # 0.38f

    .line 25
    .line 26
    .line 27
    invoke-static {p3, p3, p2}, Landroidx/compose/material/ContentAlpha;->a(FFLandroidx/compose/runtime/Composer;)F

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 32
    .line 33
    .line 34
    move-result-wide v7

    .line 35
    new-instance v0, Landroidx/compose/material/DefaultButtonColors;

    .line 36
    .line 37
    move-wide v5, v1

    .line 38
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/DefaultButtonColors;-><init>(JJJJ)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method
