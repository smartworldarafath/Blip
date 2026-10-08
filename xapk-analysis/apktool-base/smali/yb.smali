.class public final synthetic Lyb;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/navigation/NavHostController;

.field public final synthetic l:Landroidx/navigation/NavGraph;

.field public final synthetic m:Landroidx/compose/ui/Modifier;

.field public final synthetic n:Landroidx/compose/ui/Alignment;

.field public final synthetic o:Lkotlin/jvm/functions/Function1;

.field public final synthetic p:Lkotlin/jvm/functions/Function1;

.field public final synthetic q:Lkotlin/jvm/functions/Function1;

.field public final synthetic r:Lkotlin/jvm/functions/Function1;

.field public final synthetic s:Lkotlin/jvm/functions/Function2;

.field public final synthetic t:Lkotlin/jvm/functions/Function2;

.field public final synthetic u:I

.field public final synthetic v:I


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;III)V
    .locals 0

    .line 1
    iput p13, p0, Lyb;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lyb;->k:Landroidx/navigation/NavHostController;

    .line 4
    .line 5
    iput-object p2, p0, Lyb;->l:Landroidx/navigation/NavGraph;

    .line 6
    .line 7
    iput-object p3, p0, Lyb;->m:Landroidx/compose/ui/Modifier;

    .line 8
    .line 9
    iput-object p4, p0, Lyb;->n:Landroidx/compose/ui/Alignment;

    .line 10
    .line 11
    iput-object p5, p0, Lyb;->o:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    iput-object p6, p0, Lyb;->p:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    iput-object p7, p0, Lyb;->q:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    iput-object p8, p0, Lyb;->r:Lkotlin/jvm/functions/Function1;

    .line 18
    .line 19
    iput-object p9, p0, Lyb;->s:Lkotlin/jvm/functions/Function2;

    .line 20
    .line 21
    iput-object p10, p0, Lyb;->t:Lkotlin/jvm/functions/Function2;

    .line 22
    .line 23
    iput p11, p0, Lyb;->u:I

    .line 24
    .line 25
    iput p12, p0, Lyb;->v:I

    .line 26
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lyb;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    iget v3, v0, Lyb;->v:I

    .line 8
    .line 9
    iget v4, v0, Lyb;->u:I

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object/from16 v15, p1

    .line 15
    .line 16
    check-cast v15, Landroidx/compose/runtime/Composer;

    .line 17
    .line 18
    move-object/from16 v1, p2

    .line 19
    .line 20
    check-cast v1, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    or-int/lit8 v1, v4, 0x1

    .line 26
    .line 27
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 28
    .line 29
    .line 30
    move-result v16

    .line 31
    invoke-static {v3}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 32
    .line 33
    .line 34
    move-result v17

    .line 35
    iget-object v5, v0, Lyb;->k:Landroidx/navigation/NavHostController;

    .line 36
    .line 37
    iget-object v6, v0, Lyb;->l:Landroidx/navigation/NavGraph;

    .line 38
    .line 39
    iget-object v7, v0, Lyb;->m:Landroidx/compose/ui/Modifier;

    .line 40
    .line 41
    iget-object v8, v0, Lyb;->n:Landroidx/compose/ui/Alignment;

    .line 42
    .line 43
    iget-object v9, v0, Lyb;->o:Lkotlin/jvm/functions/Function1;

    .line 44
    .line 45
    iget-object v10, v0, Lyb;->p:Lkotlin/jvm/functions/Function1;

    .line 46
    .line 47
    iget-object v11, v0, Lyb;->q:Lkotlin/jvm/functions/Function1;

    .line 48
    .line 49
    iget-object v12, v0, Lyb;->r:Lkotlin/jvm/functions/Function1;

    .line 50
    .line 51
    iget-object v13, v0, Lyb;->s:Lkotlin/jvm/functions/Function2;

    .line 52
    .line 53
    iget-object v14, v0, Lyb;->t:Lkotlin/jvm/functions/Function2;

    .line 54
    .line 55
    invoke-static/range {v5 .. v17}, Landroidx/navigation/compose/NavHostKt;->a(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 56
    .line 57
    .line 58
    return-object v2

    .line 59
    :pswitch_0
    move-object/from16 v28, p1

    .line 60
    .line 61
    check-cast v28, Landroidx/compose/runtime/Composer;

    .line 62
    .line 63
    move-object/from16 v1, p2

    .line 64
    .line 65
    check-cast v1, Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    or-int/lit8 v1, v4, 0x1

    .line 71
    .line 72
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 73
    .line 74
    .line 75
    move-result v29

    .line 76
    invoke-static {v3}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 77
    .line 78
    .line 79
    move-result v30

    .line 80
    iget-object v1, v0, Lyb;->k:Landroidx/navigation/NavHostController;

    .line 81
    .line 82
    iget-object v3, v0, Lyb;->l:Landroidx/navigation/NavGraph;

    .line 83
    .line 84
    iget-object v4, v0, Lyb;->m:Landroidx/compose/ui/Modifier;

    .line 85
    .line 86
    iget-object v5, v0, Lyb;->n:Landroidx/compose/ui/Alignment;

    .line 87
    .line 88
    iget-object v6, v0, Lyb;->o:Lkotlin/jvm/functions/Function1;

    .line 89
    .line 90
    iget-object v7, v0, Lyb;->p:Lkotlin/jvm/functions/Function1;

    .line 91
    .line 92
    iget-object v8, v0, Lyb;->q:Lkotlin/jvm/functions/Function1;

    .line 93
    .line 94
    iget-object v9, v0, Lyb;->r:Lkotlin/jvm/functions/Function1;

    .line 95
    .line 96
    iget-object v10, v0, Lyb;->s:Lkotlin/jvm/functions/Function2;

    .line 97
    .line 98
    iget-object v0, v0, Lyb;->t:Lkotlin/jvm/functions/Function2;

    .line 99
    .line 100
    move-object/from16 v27, v0

    .line 101
    .line 102
    move-object/from16 v18, v1

    .line 103
    .line 104
    move-object/from16 v19, v3

    .line 105
    .line 106
    move-object/from16 v20, v4

    .line 107
    .line 108
    move-object/from16 v21, v5

    .line 109
    .line 110
    move-object/from16 v22, v6

    .line 111
    .line 112
    move-object/from16 v23, v7

    .line 113
    .line 114
    move-object/from16 v24, v8

    .line 115
    .line 116
    move-object/from16 v25, v9

    .line 117
    .line 118
    move-object/from16 v26, v10

    .line 119
    .line 120
    invoke-static/range {v18 .. v30}, Landroidx/navigation/compose/NavHostKt;->a(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 121
    .line 122
    .line 123
    return-object v2

    .line 124
    :pswitch_1
    move-object/from16 v21, p1

    .line 125
    .line 126
    check-cast v21, Landroidx/compose/runtime/Composer;

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
    or-int/lit8 v1, v4, 0x1

    .line 136
    .line 137
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 138
    .line 139
    .line 140
    move-result v22

    .line 141
    invoke-static {v3}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 142
    .line 143
    .line 144
    move-result v23

    .line 145
    iget-object v11, v0, Lyb;->k:Landroidx/navigation/NavHostController;

    .line 146
    .line 147
    iget-object v12, v0, Lyb;->l:Landroidx/navigation/NavGraph;

    .line 148
    .line 149
    iget-object v13, v0, Lyb;->m:Landroidx/compose/ui/Modifier;

    .line 150
    .line 151
    iget-object v14, v0, Lyb;->n:Landroidx/compose/ui/Alignment;

    .line 152
    .line 153
    iget-object v15, v0, Lyb;->o:Lkotlin/jvm/functions/Function1;

    .line 154
    .line 155
    iget-object v1, v0, Lyb;->p:Lkotlin/jvm/functions/Function1;

    .line 156
    .line 157
    iget-object v3, v0, Lyb;->q:Lkotlin/jvm/functions/Function1;

    .line 158
    .line 159
    iget-object v4, v0, Lyb;->r:Lkotlin/jvm/functions/Function1;

    .line 160
    .line 161
    iget-object v5, v0, Lyb;->s:Lkotlin/jvm/functions/Function2;

    .line 162
    .line 163
    iget-object v0, v0, Lyb;->t:Lkotlin/jvm/functions/Function2;

    .line 164
    .line 165
    move-object/from16 v20, v0

    .line 166
    .line 167
    move-object/from16 v16, v1

    .line 168
    .line 169
    move-object/from16 v17, v3

    .line 170
    .line 171
    move-object/from16 v18, v4

    .line 172
    .line 173
    move-object/from16 v19, v5

    .line 174
    .line 175
    invoke-static/range {v11 .. v23}, Landroidx/navigation/compose/NavHostKt;->a(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 176
    .line 177
    .line 178
    return-object v2

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
