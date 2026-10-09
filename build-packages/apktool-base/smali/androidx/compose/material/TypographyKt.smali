.class public abstract Landroidx/compose/material/TypographyKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/ui/text/TextStyle;

.field public static final b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v10, Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 2
    .line 3
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->b:F

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v10, v0, v1, v1}, Landroidx/compose/ui/text/style/LineHeightStyle;-><init>(FII)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Landroidx/compose/ui/text/TextStyle;->d:Landroidx/compose/ui/text/TextStyle;

    .line 10
    .line 11
    const/4 v11, 0x0

    .line 12
    const v12, 0xe7ffff

    .line 13
    .line 14
    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    const-wide/16 v6, 0x0

    .line 21
    .line 22
    const-wide/16 v8, 0x0

    .line 23
    .line 24
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Landroidx/compose/material/TypographyKt;->a:Landroidx/compose/ui/text/TextStyle;

    .line 29
    .line 30
    new-instance v0, Lhh;

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    invoke-direct {v0, v1}, Lhh;-><init>(I)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Landroidx/compose/runtime/CompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 39
    .line 40
    .line 41
    sput-object v1, Landroidx/compose/material/TypographyKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 42
    .line 43
    return-void
.end method

.method public static final a(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/ui/text/SpanStyle;->f:Landroidx/compose/ui/text/font/FontFamily;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v12, 0x0

    .line 9
    const v13, 0xffffdf

    .line 10
    .line 11
    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    const-wide/16 v4, 0x0

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    const-wide/16 v7, 0x0

    .line 18
    .line 19
    const-wide/16 v9, 0x0

    .line 20
    .line 21
    const/4 v11, 0x0

    .line 22
    move-object v1, p0

    .line 23
    invoke-static/range {v1 .. v13}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method
