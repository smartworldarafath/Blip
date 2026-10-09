.class public final Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lorg/xmlpull/v1/XmlPullParser;

.field public b:I

.field public c:[I

.field public d:I

.field public final e:Landroidx/compose/ui/graphics/vector/PathParser;


# direct methods
.method public constructor <init>(Landroid/content/res/XmlResourceParser;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b:I

    .line 8
    .line 9
    new-instance p1, Landroidx/compose/ui/graphics/vector/PathParser;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x40

    .line 15
    .line 16
    new-array v0, v0, [F

    .line 17
    .line 18
    iput-object v0, p1, Landroidx/compose/ui/graphics/vector/PathParser;->a:[F

    .line 19
    .line 20
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->e:Landroidx/compose/ui/graphics/vector/PathParser;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/TypedArray;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroidx/core/content/res/ComplexColorCompat;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-static {v0, p3}, Landroidx/core/content/res/TypedArrayUtils;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    new-instance p3, Landroid/util/TypedValue;

    .line 12
    .line 13
    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p4, p3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 17
    .line 18
    .line 19
    iget v2, p3, Landroid/util/TypedValue;->type:I

    .line 20
    .line 21
    const/16 v3, 0x1c

    .line 22
    .line 23
    if-lt v2, v3, :cond_0

    .line 24
    .line 25
    const/16 v3, 0x1f

    .line 26
    .line 27
    if-gt v2, v3, :cond_0

    .line 28
    .line 29
    iget p2, p3, Landroid/util/TypedValue;->data:I

    .line 30
    .line 31
    new-instance p3, Landroidx/core/content/res/ComplexColorCompat;

    .line 32
    .line 33
    invoke-direct {p3, v0, p2}, Landroidx/core/content/res/ComplexColorCompat;-><init>(Landroid/graphics/Shader;I)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-virtual {p1, p4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 42
    .line 43
    .line 44
    move-result p4

    .line 45
    :try_start_0
    invoke-static {p3, p4, p2}, Landroidx/core/content/res/ComplexColorCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/core/content/res/ComplexColorCompat;

    .line 46
    .line 47
    .line 48
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    move-object p3, p2

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p2

    .line 52
    const-string p3, "ComplexColorCompat"

    .line 53
    .line 54
    const-string p4, "Failed to inflate ComplexColor."

    .line 55
    .line 56
    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .line 58
    .line 59
    move-object p3, v0

    .line 60
    :goto_0
    if-eqz p3, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    new-instance p3, Landroidx/core/content/res/ComplexColorCompat;

    .line 64
    .line 65
    invoke-direct {p3, v0, v1}, Landroidx/core/content/res/ComplexColorCompat;-><init>(Landroid/graphics/Shader;I)V

    .line 66
    .line 67
    .line 68
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c(I)V

    .line 73
    .line 74
    .line 75
    return-object p3
.end method

.method public final b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-static {v0, p2}, Landroidx/core/content/res/TypedArrayUtils;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 11
    .line 12
    .line 13
    move-result p4

    .line 14
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c(I)V

    .line 19
    .line 20
    .line 21
    return p4
.end method

.method public final c(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b:I

    .line 2
    .line 3
    or-int/2addr p1, v0

    .line 4
    iput p1, p0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b:I

    .line 5
    .line 6
    return-void
.end method
