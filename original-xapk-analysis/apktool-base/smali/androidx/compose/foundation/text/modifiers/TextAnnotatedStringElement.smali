.class public final Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Landroidx/compose/ui/text/AnnotatedString;

.field public final c:Landroidx/compose/ui/text/TextStyle;

.field private final color:Landroidx/compose/ui/graphics/ColorProducer;

.field public final d:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field public final e:Lkotlin/jvm/functions/Function1;

.field public final f:I

.field public final g:Z

.field public final h:I

.field public final i:I

.field public final j:Ljava/util/List;

.field public final k:Lkotlin/jvm/functions/Function1;

.field public final l:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->b:Landroidx/compose/ui/text/AnnotatedString;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->c:Landroidx/compose/ui/text/TextStyle;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->d:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->e:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    iput p5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->f:I

    .line 13
    .line 14
    iput-boolean p6, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->g:Z

    .line 15
    .line 16
    iput p7, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->h:I

    .line 17
    .line 18
    iput p8, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->i:I

    .line 19
    .line 20
    iput-object p9, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->j:Ljava/util/List;

    .line 21
    .line 22
    iput-object p10, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->k:Lkotlin/jvm/functions/Function1;

    .line 23
    .line 24
    iput-object p11, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->color:Landroidx/compose/ui/graphics/ColorProducer;

    .line 25
    .line 26
    iput-object p12, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->l:Lkotlin/jvm/functions/Function1;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_0

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->color:Landroidx/compose/ui/graphics/ColorProducer;

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;

    .line 14
    .line 15
    iget-object v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->color:Landroidx/compose/ui/graphics/ColorProducer;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->b:Landroidx/compose/ui/text/AnnotatedString;

    .line 26
    .line 27
    iget-object v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->b:Landroidx/compose/ui/text/AnnotatedString;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->c:Landroidx/compose/ui/text/TextStyle;

    .line 37
    .line 38
    iget-object v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->c:Landroidx/compose/ui/text/TextStyle;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_4

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->j:Ljava/util/List;

    .line 48
    .line 49
    iget-object v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->j:Ljava/util/List;

    .line 50
    .line 51
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_5

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_5
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->d:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 59
    .line 60
    iget-object v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->d:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 61
    .line 62
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_6

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_6
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->e:Lkotlin/jvm/functions/Function1;

    .line 70
    .line 71
    iget-object v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->e:Lkotlin/jvm/functions/Function1;

    .line 72
    .line 73
    if-eq v0, v1, :cond_7

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_7
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->l:Lkotlin/jvm/functions/Function1;

    .line 77
    .line 78
    iget-object v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->l:Lkotlin/jvm/functions/Function1;

    .line 79
    .line 80
    if-eq v0, v1, :cond_8

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_8
    iget v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->f:I

    .line 84
    .line 85
    iget v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->f:I

    .line 86
    .line 87
    if-ne v0, v1, :cond_d

    .line 88
    .line 89
    iget-boolean v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->g:Z

    .line 90
    .line 91
    iget-boolean v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->g:Z

    .line 92
    .line 93
    if-eq v0, v1, :cond_9

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_9
    iget v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->h:I

    .line 97
    .line 98
    iget v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->h:I

    .line 99
    .line 100
    if-eq v0, v1, :cond_a

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_a
    iget v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->i:I

    .line 104
    .line 105
    iget v1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->i:I

    .line 106
    .line 107
    if-eq v0, v1, :cond_b

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_b
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->k:Lkotlin/jvm/functions/Function1;

    .line 111
    .line 112
    iget-object p1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->k:Lkotlin/jvm/functions/Function1;

    .line 113
    .line 114
    if-eq p0, p1, :cond_c

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_c
    :goto_0
    const/4 p0, 0x1

    .line 118
    return p0

    .line 119
    :cond_d
    :goto_1
    const/4 p0, 0x0

    .line 120
    return p0
.end method

.method public final g()Landroidx/compose/ui/Modifier$Node;
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->color:Landroidx/compose/ui/graphics/ColorProducer;

    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->b:Landroidx/compose/ui/text/AnnotatedString;

    .line 9
    .line 10
    iput-object v2, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->x:Landroidx/compose/ui/text/AnnotatedString;

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->c:Landroidx/compose/ui/text/TextStyle;

    .line 13
    .line 14
    iput-object v2, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->y:Landroidx/compose/ui/text/TextStyle;

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->d:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 17
    .line 18
    iput-object v2, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->z:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->e:Lkotlin/jvm/functions/Function1;

    .line 21
    .line 22
    iput-object v2, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->A:Lkotlin/jvm/functions/Function1;

    .line 23
    .line 24
    iget v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->f:I

    .line 25
    .line 26
    iput v2, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->B:I

    .line 27
    .line 28
    iget-boolean v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->g:Z

    .line 29
    .line 30
    iput-boolean v2, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->C:Z

    .line 31
    .line 32
    iget v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->h:I

    .line 33
    .line 34
    iput v2, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->D:I

    .line 35
    .line 36
    iget v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->i:I

    .line 37
    .line 38
    iput v2, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->E:I

    .line 39
    .line 40
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->j:Ljava/util/List;

    .line 41
    .line 42
    iput-object v2, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->F:Ljava/util/List;

    .line 43
    .line 44
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->k:Lkotlin/jvm/functions/Function1;

    .line 45
    .line 46
    iput-object v2, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->G:Lkotlin/jvm/functions/Function1;

    .line 47
    .line 48
    iput-object v1, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->H:Landroidx/compose/ui/graphics/ColorProducer;

    .line 49
    .line 50
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->l:Lkotlin/jvm/functions/Function1;

    .line 51
    .line 52
    iput-object p0, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->I:Lkotlin/jvm/functions/Function1;

    .line 53
    .line 54
    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->b:Landroidx/compose/ui/text/AnnotatedString;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->hashCode()I

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
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->c:Landroidx/compose/ui/text/TextStyle;

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
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->d:Landroidx/compose/ui/text/font/FontFamily$Resolver;

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
    const/4 v2, 0x0

    .line 27
    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->e:Lkotlin/jvm/functions/Function1;

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v3, v2

    .line 37
    :goto_0
    add-int/2addr v0, v3

    .line 38
    mul-int/2addr v0, v1

    .line 39
    iget v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->f:I

    .line 40
    .line 41
    invoke-static {v3, v0, v1}, Lq;->b(III)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-boolean v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->g:Z

    .line 46
    .line 47
    invoke-static {v0, v1, v3}, Ljb;->b(IIZ)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->h:I

    .line 52
    .line 53
    add-int/2addr v0, v3

    .line 54
    mul-int/2addr v0, v1

    .line 55
    iget v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->i:I

    .line 56
    .line 57
    add-int/2addr v0, v3

    .line 58
    mul-int/2addr v0, v1

    .line 59
    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->j:Ljava/util/List;

    .line 60
    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move v3, v2

    .line 69
    :goto_1
    add-int/2addr v0, v3

    .line 70
    mul-int/2addr v0, v1

    .line 71
    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->k:Lkotlin/jvm/functions/Function1;

    .line 72
    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    move v3, v2

    .line 81
    :goto_2
    add-int/2addr v0, v3

    .line 82
    mul-int/lit16 v0, v0, 0x3c1

    .line 83
    .line 84
    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->color:Landroidx/compose/ui/graphics/ColorProducer;

    .line 85
    .line 86
    if-eqz v3, :cond_3

    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    goto :goto_3

    .line 93
    :cond_3
    move v3, v2

    .line 94
    :goto_3
    add-int/2addr v0, v3

    .line 95
    mul-int/2addr v0, v1

    .line 96
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->l:Lkotlin/jvm/functions/Function1;

    .line 97
    .line 98
    if-eqz p0, :cond_4

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    :cond_4
    add-int/2addr v0, v2

    .line 105
    return v0
.end method

.method public final i(Landroidx/compose/ui/Modifier$Node;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->color:Landroidx/compose/ui/graphics/ColorProducer;

    .line 8
    .line 9
    iget-object v3, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->H:Landroidx/compose/ui/graphics/ColorProducer;

    .line 10
    .line 11
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    iput-object v2, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->H:Landroidx/compose/ui/graphics/ColorProducer;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    iget-object v5, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->c:Landroidx/compose/ui/text/TextStyle;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    iget-object v3, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->y:Landroidx/compose/ui/text/TextStyle;

    .line 24
    .line 25
    if-eq v5, v3, :cond_0

    .line 26
    .line 27
    iget-object v6, v5, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 28
    .line 29
    iget-object v3, v3, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 30
    .line 31
    invoke-virtual {v6, v3}, Landroidx/compose/ui/text/SpanStyle;->b(Landroidx/compose/ui/text/SpanStyle;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    :goto_0
    move v3, v2

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v3, v4

    .line 44
    :goto_1
    iget-object v6, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->x:Landroidx/compose/ui/text/AnnotatedString;

    .line 45
    .line 46
    iget-object v6, v6, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v7, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->b:Landroidx/compose/ui/text/AnnotatedString;

    .line 49
    .line 50
    iget-object v8, v7, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    iget-object v8, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->x:Landroidx/compose/ui/text/AnnotatedString;

    .line 57
    .line 58
    iget-object v8, v8, Landroidx/compose/ui/text/AnnotatedString;->j:Ljava/util/List;

    .line 59
    .line 60
    iget-object v9, v7, Landroidx/compose/ui/text/AnnotatedString;->j:Ljava/util/List;

    .line 61
    .line 62
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-eqz v6, :cond_3

    .line 67
    .line 68
    if-nez v8, :cond_2

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    move v8, v2

    .line 72
    goto :goto_3

    .line 73
    :cond_3
    :goto_2
    move v8, v4

    .line 74
    :goto_3
    if-eqz v8, :cond_4

    .line 75
    .line 76
    iput-object v7, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->x:Landroidx/compose/ui/text/AnnotatedString;

    .line 77
    .line 78
    :cond_4
    const/4 v7, 0x0

    .line 79
    if-nez v6, :cond_5

    .line 80
    .line 81
    iput-object v7, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->M:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    .line 82
    .line 83
    :cond_5
    iget-object v6, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->y:Landroidx/compose/ui/text/TextStyle;

    .line 84
    .line 85
    invoke-virtual {v6, v5}, Landroidx/compose/ui/text/TextStyle;->c(Landroidx/compose/ui/text/TextStyle;)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    xor-int/2addr v6, v4

    .line 90
    iput-object v5, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->y:Landroidx/compose/ui/text/TextStyle;

    .line 91
    .line 92
    iget-object v5, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->F:Ljava/util/List;

    .line 93
    .line 94
    iget-object v9, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->j:Ljava/util/List;

    .line 95
    .line 96
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-nez v5, :cond_6

    .line 101
    .line 102
    iput-object v9, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->F:Ljava/util/List;

    .line 103
    .line 104
    move v6, v4

    .line 105
    :cond_6
    iget v5, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->E:I

    .line 106
    .line 107
    iget v9, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->i:I

    .line 108
    .line 109
    if-eq v5, v9, :cond_7

    .line 110
    .line 111
    iput v9, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->E:I

    .line 112
    .line 113
    move v6, v4

    .line 114
    :cond_7
    iget v5, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->D:I

    .line 115
    .line 116
    iget v9, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->h:I

    .line 117
    .line 118
    if-eq v5, v9, :cond_8

    .line 119
    .line 120
    iput v9, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->D:I

    .line 121
    .line 122
    move v6, v4

    .line 123
    :cond_8
    iget-boolean v5, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->C:Z

    .line 124
    .line 125
    iget-boolean v9, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->g:Z

    .line 126
    .line 127
    if-eq v5, v9, :cond_9

    .line 128
    .line 129
    iput-boolean v9, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->C:Z

    .line 130
    .line 131
    move v6, v4

    .line 132
    :cond_9
    iget-object v5, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->z:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 133
    .line 134
    iget-object v9, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->d:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 135
    .line 136
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-nez v5, :cond_a

    .line 141
    .line 142
    iput-object v9, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->z:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 143
    .line 144
    move v6, v4

    .line 145
    :cond_a
    iget v5, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->B:I

    .line 146
    .line 147
    iget v9, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->f:I

    .line 148
    .line 149
    if-ne v5, v9, :cond_b

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_b
    iput v9, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->B:I

    .line 153
    .line 154
    move v6, v4

    .line 155
    :goto_4
    iget-object v5, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->A:Lkotlin/jvm/functions/Function1;

    .line 156
    .line 157
    iget-object v9, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->e:Lkotlin/jvm/functions/Function1;

    .line 158
    .line 159
    if-eq v5, v9, :cond_c

    .line 160
    .line 161
    iput-object v9, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->A:Lkotlin/jvm/functions/Function1;

    .line 162
    .line 163
    move v2, v4

    .line 164
    :cond_c
    iget-object v5, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->G:Lkotlin/jvm/functions/Function1;

    .line 165
    .line 166
    iget-object v9, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->k:Lkotlin/jvm/functions/Function1;

    .line 167
    .line 168
    if-eq v5, v9, :cond_d

    .line 169
    .line 170
    iput-object v9, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->G:Lkotlin/jvm/functions/Function1;

    .line 171
    .line 172
    move v2, v4

    .line 173
    :cond_d
    iget-object v5, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->I:Lkotlin/jvm/functions/Function1;

    .line 174
    .line 175
    iget-object v0, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;->l:Lkotlin/jvm/functions/Function1;

    .line 176
    .line 177
    if-eq v5, v0, :cond_e

    .line 178
    .line 179
    iput-object v0, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->I:Lkotlin/jvm/functions/Function1;

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_e
    move v4, v2

    .line 183
    :goto_5
    if-nez v8, :cond_10

    .line 184
    .line 185
    if-nez v6, :cond_10

    .line 186
    .line 187
    if-eqz v4, :cond_f

    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_f
    move/from16 p1, v6

    .line 191
    .line 192
    goto :goto_8

    .line 193
    :cond_10
    :goto_6
    invoke-virtual {v1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->Y0()Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    iget-object v2, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->x:Landroidx/compose/ui/text/AnnotatedString;

    .line 198
    .line 199
    iget-object v5, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->y:Landroidx/compose/ui/text/TextStyle;

    .line 200
    .line 201
    iget-object v9, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->z:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 202
    .line 203
    iget v10, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->B:I

    .line 204
    .line 205
    iget-boolean v11, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->C:Z

    .line 206
    .line 207
    iget v12, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->D:I

    .line 208
    .line 209
    iget v13, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->E:I

    .line 210
    .line 211
    iget-object v14, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->F:Ljava/util/List;

    .line 212
    .line 213
    iput-object v2, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 214
    .line 215
    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->k:Landroidx/compose/ui/text/TextStyle;

    .line 216
    .line 217
    invoke-virtual {v5, v2}, Landroidx/compose/ui/text/TextStyle;->c(Landroidx/compose/ui/text/TextStyle;)Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    iput-object v5, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->k:Landroidx/compose/ui/text/TextStyle;

    .line 222
    .line 223
    const/4 v15, 0x2

    .line 224
    if-nez v2, :cond_11

    .line 225
    .line 226
    move/from16 p1, v6

    .line 227
    .line 228
    iget-wide v5, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->q:J

    .line 229
    .line 230
    shl-long/2addr v5, v15

    .line 231
    iput-wide v5, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->q:J

    .line 232
    .line 233
    iput-object v7, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->l:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 234
    .line 235
    iput-object v7, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->n:Landroidx/compose/ui/text/TextLayoutResult;

    .line 236
    .line 237
    const/4 v2, -0x1

    .line 238
    iput v2, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->p:I

    .line 239
    .line 240
    iput v2, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->o:I

    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_11
    move/from16 p1, v6

    .line 244
    .line 245
    :goto_7
    iput-object v9, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->b:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 246
    .line 247
    iput v10, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->c:I

    .line 248
    .line 249
    iput-boolean v11, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->d:Z

    .line 250
    .line 251
    iput v12, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->e:I

    .line 252
    .line 253
    iput v13, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->f:I

    .line 254
    .line 255
    iput-object v14, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->g:Ljava/util/List;

    .line 256
    .line 257
    iget-wide v5, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->q:J

    .line 258
    .line 259
    shl-long/2addr v5, v15

    .line 260
    const-wide/16 v9, 0x2

    .line 261
    .line 262
    or-long/2addr v5, v9

    .line 263
    iput-wide v5, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->q:J

    .line 264
    .line 265
    iput-object v7, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->l:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 266
    .line 267
    iput-object v7, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->n:Landroidx/compose/ui/text/TextLayoutResult;

    .line 268
    .line 269
    const/4 v2, -0x1

    .line 270
    iput v2, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->p:I

    .line 271
    .line 272
    iput v2, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->o:I

    .line 273
    .line 274
    :goto_8
    iget-boolean v0, v1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 275
    .line 276
    if-nez v0, :cond_12

    .line 277
    .line 278
    goto :goto_9

    .line 279
    :cond_12
    if-nez v8, :cond_13

    .line 280
    .line 281
    if-eqz v3, :cond_14

    .line 282
    .line 283
    iget-object v0, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->L:Lrg;

    .line 284
    .line 285
    if-eqz v0, :cond_14

    .line 286
    .line 287
    :cond_13
    invoke-static {v1}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->b(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 288
    .line 289
    .line 290
    :cond_14
    if-nez v8, :cond_15

    .line 291
    .line 292
    if-nez p1, :cond_15

    .line 293
    .line 294
    if-eqz v4, :cond_16

    .line 295
    .line 296
    :cond_15
    invoke-static {v1}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->a(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 297
    .line 298
    .line 299
    invoke-static {v1}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 300
    .line 301
    .line 302
    :cond_16
    if-eqz v3, :cond_17

    .line 303
    .line 304
    invoke-static {v1}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 305
    .line 306
    .line 307
    :cond_17
    :goto_9
    return-void
.end method
