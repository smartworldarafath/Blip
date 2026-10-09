.class public final Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Landroidx/compose/ui/text/TextStyle;

.field private final color:Landroidx/compose/ui/graphics/ColorProducer;

.field public final d:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field public final e:I

.field public final f:Z

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILandroidx/compose/ui/graphics/ColorProducer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->b:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->c:Landroidx/compose/ui/text/TextStyle;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->d:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 9
    .line 10
    iput p4, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->e:I

    .line 11
    .line 12
    iput-boolean p5, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->f:Z

    .line 13
    .line 14
    iput p6, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->g:I

    .line 15
    .line 16
    iput p7, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->h:I

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->color:Landroidx/compose/ui/graphics/ColorProducer;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->color:Landroidx/compose/ui/graphics/ColorProducer;

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->color:Landroidx/compose/ui/graphics/ColorProducer;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->b:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->c:Landroidx/compose/ui/text/TextStyle;

    .line 36
    .line 37
    iget-object v3, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->c:Landroidx/compose/ui/text/TextStyle;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->d:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 47
    .line 48
    iget-object v3, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->d:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget v1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->e:I

    .line 58
    .line 59
    iget v3, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->e:I

    .line 60
    .line 61
    if-ne v1, v3, :cond_9

    .line 62
    .line 63
    iget-boolean v1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->f:Z

    .line 64
    .line 65
    iget-boolean v3, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->f:Z

    .line 66
    .line 67
    if-eq v1, v3, :cond_6

    .line 68
    .line 69
    return v2

    .line 70
    :cond_6
    iget v1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->g:I

    .line 71
    .line 72
    iget v3, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->g:I

    .line 73
    .line 74
    if-eq v1, v3, :cond_7

    .line 75
    .line 76
    return v2

    .line 77
    :cond_7
    iget p0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->h:I

    .line 78
    .line 79
    iget p1, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->h:I

    .line 80
    .line 81
    if-eq p0, p1, :cond_8

    .line 82
    .line 83
    return v2

    .line 84
    :cond_8
    return v0

    .line 85
    :cond_9
    return v2
.end method

.method public final g()Landroidx/compose/ui/Modifier$Node;
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->color:Landroidx/compose/ui/graphics/ColorProducer;

    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->b:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v2, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->x:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->c:Landroidx/compose/ui/text/TextStyle;

    .line 13
    .line 14
    iput-object v2, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->y:Landroidx/compose/ui/text/TextStyle;

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->d:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 17
    .line 18
    iput-object v2, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->z:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 19
    .line 20
    iget v2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->e:I

    .line 21
    .line 22
    iput v2, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->A:I

    .line 23
    .line 24
    iget-boolean v2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->f:Z

    .line 25
    .line 26
    iput-boolean v2, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->B:Z

    .line 27
    .line 28
    iget v2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->g:I

    .line 29
    .line 30
    iput v2, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->C:I

    .line 31
    .line 32
    iget p0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->h:I

    .line 33
    .line 34
    iput p0, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->D:I

    .line 35
    .line 36
    iput-object v1, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->E:Landroidx/compose/ui/graphics/ColorProducer;

    .line 37
    .line 38
    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->c:Landroidx/compose/ui/text/TextStyle;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroidx/compose/ui/text/TextStyle;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/2addr v2, v0

    .line 17
    mul-int/2addr v2, v1

    .line 18
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->d:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v2

    .line 25
    mul-int/2addr v0, v1

    .line 26
    iget v2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->e:I

    .line 27
    .line 28
    invoke-static {v2, v0, v1}, Lq;->b(III)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-boolean v2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->f:Z

    .line 33
    .line 34
    invoke-static {v0, v1, v2}, Ljb;->b(IIZ)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget v2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->g:I

    .line 39
    .line 40
    add-int/2addr v0, v2

    .line 41
    mul-int/2addr v0, v1

    .line 42
    iget v2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->h:I

    .line 43
    .line 44
    add-int/2addr v0, v2

    .line 45
    mul-int/2addr v0, v1

    .line 46
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->color:Landroidx/compose/ui/graphics/ColorProducer;

    .line 47
    .line 48
    if-eqz p0, :cond_0

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 p0, 0x0

    .line 56
    :goto_0
    add-int/2addr v0, p0

    .line 57
    return v0
.end method

.method public final i(Landroidx/compose/ui/Modifier$Node;)V
    .locals 12

    .line 1
    check-cast p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->color:Landroidx/compose/ui/graphics/ColorProducer;

    .line 4
    .line 5
    iget-object v1, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->E:Landroidx/compose/ui/graphics/ColorProducer;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iput-object v0, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->E:Landroidx/compose/ui/graphics/ColorProducer;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->c:Landroidx/compose/ui/text/TextStyle;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->y:Landroidx/compose/ui/text/TextStyle;

    .line 20
    .line 21
    if-eq v3, v1, :cond_0

    .line 22
    .line 23
    iget-object v4, v3, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 24
    .line 25
    iget-object v1, v1, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 26
    .line 27
    invoke-virtual {v4, v1}, Landroidx/compose/ui/text/SpanStyle;->b(Landroidx/compose/ui/text/SpanStyle;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    :goto_0
    move v1, v0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v1, v2

    .line 40
    :goto_1
    iget-object v4, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->x:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v5, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->b:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const/4 v6, 0x0

    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    move v4, v0

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    iput-object v5, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->x:Ljava/lang/String;

    .line 54
    .line 55
    iput-object v6, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->I:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    .line 56
    .line 57
    move v4, v2

    .line 58
    :goto_2
    iget-object v5, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->y:Landroidx/compose/ui/text/TextStyle;

    .line 59
    .line 60
    invoke-virtual {v5, v3}, Landroidx/compose/ui/text/TextStyle;->c(Landroidx/compose/ui/text/TextStyle;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    xor-int/2addr v5, v2

    .line 65
    iput-object v3, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->y:Landroidx/compose/ui/text/TextStyle;

    .line 66
    .line 67
    iget v3, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->D:I

    .line 68
    .line 69
    iget v7, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->h:I

    .line 70
    .line 71
    if-eq v3, v7, :cond_3

    .line 72
    .line 73
    iput v7, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->D:I

    .line 74
    .line 75
    move v5, v2

    .line 76
    :cond_3
    iget v3, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->C:I

    .line 77
    .line 78
    iget v7, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->g:I

    .line 79
    .line 80
    if-eq v3, v7, :cond_4

    .line 81
    .line 82
    iput v7, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->C:I

    .line 83
    .line 84
    move v5, v2

    .line 85
    :cond_4
    iget-boolean v3, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->B:Z

    .line 86
    .line 87
    iget-boolean v7, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->f:Z

    .line 88
    .line 89
    if-eq v3, v7, :cond_5

    .line 90
    .line 91
    iput-boolean v7, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->B:Z

    .line 92
    .line 93
    move v5, v2

    .line 94
    :cond_5
    iget-object v3, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->z:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 95
    .line 96
    iget-object v7, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->d:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 97
    .line 98
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-nez v3, :cond_6

    .line 103
    .line 104
    iput-object v7, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->z:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 105
    .line 106
    move v5, v2

    .line 107
    :cond_6
    iget v3, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->A:I

    .line 108
    .line 109
    iget p0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;->e:I

    .line 110
    .line 111
    if-ne v3, p0, :cond_7

    .line 112
    .line 113
    move v2, v5

    .line 114
    goto :goto_3

    .line 115
    :cond_7
    iput p0, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->A:I

    .line 116
    .line 117
    :goto_3
    if-nez v4, :cond_8

    .line 118
    .line 119
    if-eqz v2, :cond_9

    .line 120
    .line 121
    :cond_8
    invoke-virtual {p1}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->Y0()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    iget-object v3, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->x:Ljava/lang/String;

    .line 126
    .line 127
    iget-object v5, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->y:Landroidx/compose/ui/text/TextStyle;

    .line 128
    .line 129
    iget-object v7, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->z:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 130
    .line 131
    iget v8, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->A:I

    .line 132
    .line 133
    iget-boolean v9, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->B:Z

    .line 134
    .line 135
    iget v10, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->C:I

    .line 136
    .line 137
    iget v11, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->D:I

    .line 138
    .line 139
    iput-object v3, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->a:Ljava/lang/String;

    .line 140
    .line 141
    iput-object v5, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->b:Landroidx/compose/ui/text/TextStyle;

    .line 142
    .line 143
    iput-object v7, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->c:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 144
    .line 145
    iput v8, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->d:I

    .line 146
    .line 147
    iput-boolean v9, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->e:Z

    .line 148
    .line 149
    iput v10, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->f:I

    .line 150
    .line 151
    iput v11, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->g:I

    .line 152
    .line 153
    iget-wide v7, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->s:J

    .line 154
    .line 155
    const/4 v3, 0x2

    .line 156
    shl-long/2addr v7, v3

    .line 157
    const-wide/16 v9, 0x2

    .line 158
    .line 159
    or-long/2addr v7, v9

    .line 160
    iput-wide v7, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->s:J

    .line 161
    .line 162
    iput-object v6, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->j:Landroidx/compose/ui/text/AndroidParagraph;

    .line 163
    .line 164
    iput-object v6, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->n:Landroidx/compose/ui/text/ParagraphIntrinsics;

    .line 165
    .line 166
    iput-object v6, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->o:Landroidx/compose/ui/unit/LayoutDirection;

    .line 167
    .line 168
    const/4 v3, -0x1

    .line 169
    iput v3, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->q:I

    .line 170
    .line 171
    iput v3, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->r:I

    .line 172
    .line 173
    invoke-static {v0, v0}, Landroidx/compose/ui/unit/Constraints$Companion;->c(II)J

    .line 174
    .line 175
    .line 176
    move-result-wide v5

    .line 177
    iput-wide v5, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->p:J

    .line 178
    .line 179
    const-wide/16 v5, 0x0

    .line 180
    .line 181
    iput-wide v5, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->l:J

    .line 182
    .line 183
    iput-boolean v0, p0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->k:Z

    .line 184
    .line 185
    :cond_9
    iget-boolean p0, p1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 186
    .line 187
    if-nez p0, :cond_a

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_a
    if-nez v4, :cond_b

    .line 191
    .line 192
    if-eqz v1, :cond_c

    .line 193
    .line 194
    iget-object p0, p1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->H:Lih;

    .line 195
    .line 196
    if-eqz p0, :cond_c

    .line 197
    .line 198
    :cond_b
    invoke-static {p1}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->b(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 199
    .line 200
    .line 201
    :cond_c
    if-nez v4, :cond_d

    .line 202
    .line 203
    if-eqz v2, :cond_e

    .line 204
    .line 205
    :cond_d
    invoke-static {p1}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->a(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 206
    .line 207
    .line 208
    invoke-static {p1}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 209
    .line 210
    .line 211
    :cond_e
    if-eqz v1, :cond_f

    .line 212
    .line 213
    invoke-static {p1}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 214
    .line 215
    .line 216
    :cond_f
    :goto_4
    return-void
.end method
