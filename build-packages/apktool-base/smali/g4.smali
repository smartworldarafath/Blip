.class public final synthetic Lg4;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/CharSequence;

.field public final synthetic l:Landroidx/compose/ui/Modifier;

.field public final synthetic m:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic n:I

.field public final synthetic o:Z

.field public final synthetic p:I

.field public final synthetic q:I

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:I

.field public final synthetic t:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILjava/lang/Object;III)V
    .locals 0

    .line 1
    iput p11, p0, Lg4;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lg4;->k:Ljava/lang/CharSequence;

    .line 4
    .line 5
    iput-object p2, p0, Lg4;->l:Landroidx/compose/ui/Modifier;

    .line 6
    .line 7
    iput-object p3, p0, Lg4;->m:Landroidx/compose/ui/text/TextStyle;

    .line 8
    .line 9
    iput p4, p0, Lg4;->n:I

    .line 10
    .line 11
    iput-boolean p5, p0, Lg4;->o:Z

    .line 12
    .line 13
    iput p6, p0, Lg4;->p:I

    .line 14
    .line 15
    iput p7, p0, Lg4;->q:I

    .line 16
    .line 17
    iput-object p8, p0, Lg4;->r:Ljava/lang/Object;

    .line 18
    .line 19
    iput p9, p0, Lg4;->s:I

    .line 20
    .line 21
    iput p10, p0, Lg4;->t:I

    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lg4;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    iget v3, v0, Lg4;->s:I

    .line 8
    .line 9
    iget-object v4, v0, Lg4;->r:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Lg4;->k:Ljava/lang/CharSequence;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object v6, v5

    .line 17
    check-cast v6, Landroidx/compose/ui/text/AnnotatedString;

    .line 18
    .line 19
    move-object v13, v4

    .line 20
    check-cast v13, Ljava/util/Map;

    .line 21
    .line 22
    move-object/from16 v14, p1

    .line 23
    .line 24
    check-cast v14, Landroidx/compose/runtime/Composer;

    .line 25
    .line 26
    move-object/from16 v1, p2

    .line 27
    .line 28
    check-cast v1, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    or-int/lit8 v1, v3, 0x1

    .line 34
    .line 35
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 36
    .line 37
    .line 38
    move-result v15

    .line 39
    iget-object v7, v0, Lg4;->l:Landroidx/compose/ui/Modifier;

    .line 40
    .line 41
    iget-object v8, v0, Lg4;->m:Landroidx/compose/ui/text/TextStyle;

    .line 42
    .line 43
    iget v9, v0, Lg4;->n:I

    .line 44
    .line 45
    iget-boolean v10, v0, Lg4;->o:Z

    .line 46
    .line 47
    iget v11, v0, Lg4;->p:I

    .line 48
    .line 49
    iget v12, v0, Lg4;->q:I

    .line 50
    .line 51
    iget v0, v0, Lg4;->t:I

    .line 52
    .line 53
    move/from16 v16, v0

    .line 54
    .line 55
    invoke-static/range {v6 .. v16}, Lnet/blip/shared/PlatformTextKt;->b(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILjava/util/Map;Landroidx/compose/runtime/Composer;II)V

    .line 56
    .line 57
    .line 58
    return-object v2

    .line 59
    :pswitch_0
    move-object/from16 v16, v5

    .line 60
    .line 61
    check-cast v16, Ljava/lang/String;

    .line 62
    .line 63
    move-object/from16 v23, v4

    .line 64
    .line 65
    check-cast v23, Landroidx/compose/ui/graphics/ColorProducer;

    .line 66
    .line 67
    move-object/from16 v24, p1

    .line 68
    .line 69
    check-cast v24, Landroidx/compose/runtime/Composer;

    .line 70
    .line 71
    move-object/from16 v1, p2

    .line 72
    .line 73
    check-cast v1, Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    or-int/lit8 v1, v3, 0x1

    .line 79
    .line 80
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 81
    .line 82
    .line 83
    move-result v25

    .line 84
    iget-object v1, v0, Lg4;->l:Landroidx/compose/ui/Modifier;

    .line 85
    .line 86
    iget-object v3, v0, Lg4;->m:Landroidx/compose/ui/text/TextStyle;

    .line 87
    .line 88
    iget v4, v0, Lg4;->n:I

    .line 89
    .line 90
    iget-boolean v5, v0, Lg4;->o:Z

    .line 91
    .line 92
    iget v6, v0, Lg4;->p:I

    .line 93
    .line 94
    iget v7, v0, Lg4;->q:I

    .line 95
    .line 96
    iget v0, v0, Lg4;->t:I

    .line 97
    .line 98
    move/from16 v26, v0

    .line 99
    .line 100
    move-object/from16 v17, v1

    .line 101
    .line 102
    move-object/from16 v18, v3

    .line 103
    .line 104
    move/from16 v19, v4

    .line 105
    .line 106
    move/from16 v20, v5

    .line 107
    .line 108
    move/from16 v21, v6

    .line 109
    .line 110
    move/from16 v22, v7

    .line 111
    .line 112
    invoke-static/range {v16 .. v26}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 113
    .line 114
    .line 115
    return-object v2

    .line 116
    :pswitch_1
    move-object/from16 v26, v5

    .line 117
    .line 118
    check-cast v26, Ljava/lang/String;

    .line 119
    .line 120
    move-object/from16 v33, v4

    .line 121
    .line 122
    check-cast v33, Landroidx/compose/ui/graphics/ColorProducer;

    .line 123
    .line 124
    move-object/from16 v34, p1

    .line 125
    .line 126
    check-cast v34, Landroidx/compose/runtime/Composer;

    .line 127
    .line 128
    move-object/from16 v1, p2

    .line 129
    .line 130
    check-cast v1, Ljava/lang/Integer;

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    or-int/lit8 v1, v3, 0x1

    .line 136
    .line 137
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 138
    .line 139
    .line 140
    move-result v35

    .line 141
    iget-object v1, v0, Lg4;->l:Landroidx/compose/ui/Modifier;

    .line 142
    .line 143
    iget-object v3, v0, Lg4;->m:Landroidx/compose/ui/text/TextStyle;

    .line 144
    .line 145
    iget v4, v0, Lg4;->n:I

    .line 146
    .line 147
    iget-boolean v5, v0, Lg4;->o:Z

    .line 148
    .line 149
    iget v6, v0, Lg4;->p:I

    .line 150
    .line 151
    iget v7, v0, Lg4;->q:I

    .line 152
    .line 153
    iget v0, v0, Lg4;->t:I

    .line 154
    .line 155
    move/from16 v36, v0

    .line 156
    .line 157
    move-object/from16 v27, v1

    .line 158
    .line 159
    move-object/from16 v28, v3

    .line 160
    .line 161
    move/from16 v29, v4

    .line 162
    .line 163
    move/from16 v30, v5

    .line 164
    .line 165
    move/from16 v31, v6

    .line 166
    .line 167
    move/from16 v32, v7

    .line 168
    .line 169
    invoke-static/range {v26 .. v36}, Landroidx/compose/foundation/text/BasicTextKt;->b(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 170
    .line 171
    .line 172
    return-object v2

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
