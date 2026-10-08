.class public final synthetic Lzg;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Z

.field public final synthetic l:Landroidx/compose/ui/text/input/VisualTransformation;

.field public final synthetic m:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic n:Lkotlin/jvm/functions/Function2;

.field public final synthetic o:Lkotlin/jvm/functions/Function2;

.field public final synthetic p:Lkotlin/jvm/functions/Function2;

.field public final synthetic q:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic r:Landroidx/compose/material/TextFieldColors;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lzg;->j:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lzg;->k:Z

    .line 7
    .line 8
    iput-object p3, p0, Lzg;->l:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 9
    .line 10
    iput-object p4, p0, Lzg;->m:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 11
    .line 12
    iput-object p5, p0, Lzg;->n:Lkotlin/jvm/functions/Function2;

    .line 13
    .line 14
    iput-object p6, p0, Lzg;->o:Lkotlin/jvm/functions/Function2;

    .line 15
    .line 16
    iput-object p7, p0, Lzg;->p:Lkotlin/jvm/functions/Function2;

    .line 17
    .line 18
    iput-object p8, p0, Lzg;->q:Landroidx/compose/ui/graphics/Shape;

    .line 19
    .line 20
    iput-object p9, p0, Lzg;->r:Landroidx/compose/material/TextFieldColors;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 10
    .line 11
    move-object/from16 v3, p3

    .line 12
    .line 13
    check-cast v3, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    and-int/lit8 v4, v3, 0x6

    .line 20
    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    move-object v4, v1

    .line 24
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 25
    .line 26
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    const/4 v4, 0x4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v4, 0x2

    .line 35
    :goto_0
    or-int/2addr v3, v4

    .line 36
    :cond_1
    and-int/lit8 v4, v3, 0x13

    .line 37
    .line 38
    const/16 v5, 0x12

    .line 39
    .line 40
    if-eq v4, v5, :cond_2

    .line 41
    .line 42
    const/4 v4, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/4 v4, 0x0

    .line 45
    :goto_1
    and-int/lit8 v5, v3, 0x1

    .line 46
    .line 47
    move-object v13, v1

    .line 48
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 49
    .line 50
    invoke-virtual {v13, v5, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    shl-int/lit8 v1, v3, 0x3

    .line 57
    .line 58
    and-int/lit8 v14, v1, 0x70

    .line 59
    .line 60
    sget-object v1, Landroidx/compose/material/TextFieldDefaults;->a:Landroidx/compose/material/TextFieldDefaults;

    .line 61
    .line 62
    move-object v3, v1

    .line 63
    iget-object v1, v0, Lzg;->j:Ljava/lang/String;

    .line 64
    .line 65
    move-object v4, v3

    .line 66
    iget-boolean v3, v0, Lzg;->k:Z

    .line 67
    .line 68
    move-object v5, v4

    .line 69
    const/4 v4, 0x0

    .line 70
    move-object v6, v5

    .line 71
    iget-object v5, v0, Lzg;->l:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 72
    .line 73
    move-object v7, v6

    .line 74
    iget-object v6, v0, Lzg;->m:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 75
    .line 76
    move-object v8, v7

    .line 77
    iget-object v7, v0, Lzg;->n:Lkotlin/jvm/functions/Function2;

    .line 78
    .line 79
    move-object v9, v8

    .line 80
    iget-object v8, v0, Lzg;->o:Lkotlin/jvm/functions/Function2;

    .line 81
    .line 82
    move-object v10, v9

    .line 83
    iget-object v9, v0, Lzg;->p:Lkotlin/jvm/functions/Function2;

    .line 84
    .line 85
    move-object v11, v10

    .line 86
    iget-object v10, v0, Lzg;->q:Landroidx/compose/ui/graphics/Shape;

    .line 87
    .line 88
    iget-object v0, v0, Lzg;->r:Landroidx/compose/material/TextFieldColors;

    .line 89
    .line 90
    const/4 v12, 0x0

    .line 91
    move-object v15, v11

    .line 92
    move-object v11, v0

    .line 93
    move-object v0, v15

    .line 94
    invoke-virtual/range {v0 .. v14}, Landroidx/compose/material/TextFieldDefaults;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 99
    .line 100
    .line 101
    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 102
    .line 103
    return-object v0
.end method
