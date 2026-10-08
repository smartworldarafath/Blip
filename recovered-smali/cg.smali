.class public final synthetic Lcg;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic m:Landroidx/compose/ui/text/input/VisualTransformation;

.field public final synthetic n:I

.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/input/TextFieldValue;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcg;->j:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 5
    .line 6
    iput-object p2, p0, Lcg;->k:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcg;->l:Landroidx/compose/ui/text/TextStyle;

    .line 9
    .line 10
    iput-object p4, p0, Lcg;->m:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 11
    .line 12
    iput p5, p0, Lcg;->n:I

    .line 13
    .line 14
    iput p6, p0, Lcg;->o:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Landroidx/compose/runtime/Composer;

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
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    and-int/lit8 v4, v3, 0x6

    .line 23
    .line 24
    if-nez v4, :cond_1

    .line 25
    .line 26
    move-object v4, v2

    .line 27
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 28
    .line 29
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    const/4 v4, 0x4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v4, 0x2

    .line 38
    :goto_0
    or-int/2addr v3, v4

    .line 39
    :cond_1
    and-int/lit8 v4, v3, 0x13

    .line 40
    .line 41
    const/16 v5, 0x12

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    if-eq v4, v5, :cond_2

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v4, v6

    .line 49
    :goto_1
    and-int/lit8 v5, v3, 0x1

    .line 50
    .line 51
    move-object v15, v2

    .line 52
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 53
    .line 54
    invoke-virtual {v15, v5, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    and-int/lit8 v2, v3, 0xe

    .line 61
    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-interface {v1, v15, v2}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcg;->j:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 70
    .line 71
    iget-object v1, v1, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 72
    .line 73
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_3

    .line 80
    .line 81
    const v1, -0x64d84fd5

    .line 82
    .line 83
    .line 84
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 85
    .line 86
    .line 87
    const/4 v12, 0x0

    .line 88
    const/16 v16, 0x0

    .line 89
    .line 90
    iget-object v7, v0, Lcg;->k:Ljava/lang/String;

    .line 91
    .line 92
    const/4 v8, 0x0

    .line 93
    iget-object v9, v0, Lcg;->l:Landroidx/compose/ui/text/TextStyle;

    .line 94
    .line 95
    iget-object v10, v0, Lcg;->m:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 96
    .line 97
    const/4 v11, 0x0

    .line 98
    iget v13, v0, Lcg;->n:I

    .line 99
    .line 100
    iget v14, v0, Lcg;->o:I

    .line 101
    .line 102
    invoke-static/range {v7 .. v16}, Lnet/blip/shared/PlatformTextKt;->a(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;IZIILandroidx/compose/runtime/Composer;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_3
    const v0, -0x64d37189

    .line 110
    .line 111
    .line 112
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 120
    .line 121
    .line 122
    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 123
    .line 124
    return-object v0
.end method
