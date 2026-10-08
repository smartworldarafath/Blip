.class public abstract Lnet/blip/shared/AvatarKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

.field public static final b:Lh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ln;-><init>(I)V

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
    sput-object v1, Lnet/blip/shared/AvatarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 14
    .line 15
    new-instance v0, Lh;

    .line 16
    .line 17
    const/16 v1, 0x12

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lh;-><init>(I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lnet/blip/shared/AvatarKt;->b:Lh;

    .line 23
    .line 24
    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme$Appearance;Lnet/blip/libblip/Device;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object v3, p3

    .line 5
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v0, 0xf365118

    .line 8
    .line 9
    .line 10
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v0, p4, 0x6

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v3, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v2, 0x2

    .line 26
    :goto_0
    or-int/2addr v2, p4

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v2, p4

    .line 29
    :goto_1
    and-int/lit8 v4, p4, 0x30

    .line 30
    .line 31
    if-nez v4, :cond_4

    .line 32
    .line 33
    and-int/lit8 v4, p4, 0x40

    .line 34
    .line 35
    if-nez v4, :cond_2

    .line 36
    .line 37
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    :goto_2
    if-eqz v4, :cond_3

    .line 47
    .line 48
    const/16 v4, 0x20

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_3
    const/16 v4, 0x10

    .line 52
    .line 53
    :goto_3
    or-int/2addr v2, v4

    .line 54
    :cond_4
    and-int/lit16 v4, p4, 0x180

    .line 55
    .line 56
    if-nez v4, :cond_6

    .line 57
    .line 58
    invoke-virtual {v3, p2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_5

    .line 63
    .line 64
    const/16 v4, 0x100

    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_5
    const/16 v4, 0x80

    .line 68
    .line 69
    :goto_4
    or-int/2addr v2, v4

    .line 70
    :cond_6
    and-int/lit16 v4, v2, 0x93

    .line 71
    .line 72
    const/16 v5, 0x92

    .line 73
    .line 74
    if-eq v4, v5, :cond_7

    .line 75
    .line 76
    const/4 v4, 0x1

    .line 77
    goto :goto_5

    .line 78
    :cond_7
    const/4 v4, 0x0

    .line 79
    :goto_5
    and-int/lit8 v5, v2, 0x1

    .line 80
    .line 81
    invoke-virtual {v3, v5, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_a

    .line 86
    .line 87
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 88
    .line 89
    .line 90
    and-int/lit8 v4, p4, 0x1

    .line 91
    .line 92
    if-eqz v4, :cond_9

    .line 93
    .line 94
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_8

    .line 99
    .line 100
    goto :goto_6

    .line 101
    :cond_8
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 102
    .line 103
    .line 104
    :cond_9
    :goto_6
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 105
    .line 106
    .line 107
    move v4, v2

    .line 108
    iget-object v2, p2, Lnet/blip/libblip/Device;->n:Lnet/blip/libblip/DeviceKind;

    .line 109
    .line 110
    and-int/lit8 v4, v4, 0x7e

    .line 111
    .line 112
    const/4 v5, 0x0

    .line 113
    move-object v0, p0

    .line 114
    move-object v1, p1

    .line 115
    invoke-static/range {v0 .. v5}, Lnet/blip/shared/AvatarKt;->b(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme$Appearance;Lnet/blip/libblip/DeviceKind;Landroidx/compose/runtime/Composer;II)V

    .line 116
    .line 117
    .line 118
    goto :goto_7

    .line 119
    :cond_a
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 120
    .line 121
    .line 122
    :goto_7
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    if-eqz v6, :cond_b

    .line 127
    .line 128
    new-instance v0, Lb1;

    .line 129
    .line 130
    const/4 v5, 0x4

    .line 131
    move-object v1, p0

    .line 132
    move-object v2, p1

    .line 133
    move-object v3, p2

    .line 134
    move v4, p4

    .line 135
    invoke-direct/range {v0 .. v5}, Lb1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 136
    .line 137
    .line 138
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 139
    .line 140
    :cond_b
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme$Appearance;Lnet/blip/libblip/DeviceKind;Landroidx/compose/runtime/Composer;II)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    const v0, 0x58cd77cc

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    .line 12
    and-int/lit8 v0, p5, 0x1

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    or-int/lit8 v1, p4, 0x6

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    and-int/lit8 v1, p4, 0x6

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x2

    .line 32
    :goto_0
    or-int/2addr v1, p4

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move v1, p4

    .line 35
    :goto_1
    and-int/lit8 v2, p4, 0x30

    .line 36
    .line 37
    if-nez v2, :cond_5

    .line 38
    .line 39
    and-int/lit8 v2, p5, 0x2

    .line 40
    .line 41
    if-nez v2, :cond_4

    .line 42
    .line 43
    and-int/lit8 v2, p4, 0x40

    .line 44
    .line 45
    if-nez v2, :cond_3

    .line 46
    .line 47
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    :goto_2
    if-eqz v2, :cond_4

    .line 57
    .line 58
    const/16 v2, 0x20

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_4
    const/16 v2, 0x10

    .line 62
    .line 63
    :goto_3
    or-int/2addr v1, v2

    .line 64
    :cond_5
    and-int/lit16 v2, p4, 0x180

    .line 65
    .line 66
    const/16 v3, 0x100

    .line 67
    .line 68
    if-nez v2, :cond_7

    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-virtual {p3, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_6

    .line 79
    .line 80
    move v2, v3

    .line 81
    goto :goto_4

    .line 82
    :cond_6
    const/16 v2, 0x80

    .line 83
    .line 84
    :goto_4
    or-int/2addr v1, v2

    .line 85
    :cond_7
    and-int/lit16 v2, v1, 0x93

    .line 86
    .line 87
    const/16 v4, 0x92

    .line 88
    .line 89
    const/4 v5, 0x0

    .line 90
    const/4 v6, 0x1

    .line 91
    if-eq v2, v4, :cond_8

    .line 92
    .line 93
    move v2, v6

    .line 94
    goto :goto_5

    .line 95
    :cond_8
    move v2, v5

    .line 96
    :goto_5
    and-int/lit8 v4, v1, 0x1

    .line 97
    .line 98
    invoke-virtual {p3, v4, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_10

    .line 103
    .line 104
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 105
    .line 106
    .line 107
    and-int/lit8 v2, p4, 0x1

    .line 108
    .line 109
    if-eqz v2, :cond_a

    .line 110
    .line 111
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_9

    .line 116
    .line 117
    goto :goto_7

    .line 118
    :cond_9
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 119
    .line 120
    .line 121
    and-int/lit8 v0, p5, 0x2

    .line 122
    .line 123
    if-eqz v0, :cond_c

    .line 124
    .line 125
    :goto_6
    and-int/lit8 v1, v1, -0x71

    .line 126
    .line 127
    goto :goto_8

    .line 128
    :cond_a
    :goto_7
    if-eqz v0, :cond_b

    .line 129
    .line 130
    sget-object p0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 131
    .line 132
    :cond_b
    and-int/lit8 v0, p5, 0x2

    .line 133
    .line 134
    if-eqz v0, :cond_c

    .line 135
    .line 136
    sget-object p1, Lnet/blip/shared/AvatarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 137
    .line 138
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Lnet/blip/shared/AvatarTheme;

    .line 143
    .line 144
    check-cast p1, Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;

    .line 145
    .line 146
    invoke-virtual {p1, v5, p3}, Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;->a(ILandroidx/compose/runtime/Composer;)Lnet/blip/shared/AvatarTheme$Appearance;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    goto :goto_6

    .line 151
    :cond_c
    :goto_8
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 152
    .line 153
    .line 154
    and-int/lit16 v0, v1, 0x380

    .line 155
    .line 156
    if-ne v0, v3, :cond_d

    .line 157
    .line 158
    move v5, v6

    .line 159
    :cond_d
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-nez v5, :cond_e

    .line 164
    .line 165
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 166
    .line 167
    if-ne v0, v2, :cond_f

    .line 168
    .line 169
    :cond_e
    new-instance v0, Lc;

    .line 170
    .line 171
    const/16 v2, 0x8

    .line 172
    .line 173
    invoke-direct {v0, v2, p2}, Lc;-><init>(ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_f
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 180
    .line 181
    and-int/lit8 v1, v1, 0x7e

    .line 182
    .line 183
    invoke-static {p0, p1, v0, p3, v1}, Lnet/blip/shared/AvatarKt;->e(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme$Appearance;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 184
    .line 185
    .line 186
    :goto_9
    move-object v3, p0

    .line 187
    move-object v4, p1

    .line 188
    goto :goto_a

    .line 189
    :cond_10
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 190
    .line 191
    .line 192
    goto :goto_9

    .line 193
    :goto_a
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    if-eqz p0, :cond_11

    .line 198
    .line 199
    new-instance v2, Lz3;

    .line 200
    .line 201
    const/4 v8, 0x0

    .line 202
    move-object v5, p2

    .line 203
    move v6, p4

    .line 204
    move v7, p5

    .line 205
    invoke-direct/range {v2 .. v8}, Lz3;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 206
    .line 207
    .line 208
    iput-object v2, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 209
    .line 210
    :cond_11
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme$Appearance;Lnet/blip/libblip/User;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 14

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    move/from16 v5, p5

    .line 4
    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, v3, Lnet/blip/libblip/User;->o:Ljava/lang/String;

    .line 9
    .line 10
    move-object/from16 v11, p4

    .line 11
    .line 12
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    const v1, -0x476888a6

    .line 15
    .line 16
    .line 17
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    .line 20
    and-int/lit8 v1, p6, 0x1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    or-int/lit8 v2, v5, 0x6

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    and-int/lit8 v2, v5, 0x6

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {v11, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    const/4 v2, 0x4

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v2, 0x2

    .line 40
    :goto_0
    or-int/2addr v2, v5

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move v2, v5

    .line 43
    :goto_1
    and-int/lit8 v4, v5, 0x30

    .line 44
    .line 45
    if-nez v4, :cond_5

    .line 46
    .line 47
    and-int/lit8 v4, p6, 0x2

    .line 48
    .line 49
    if-nez v4, :cond_4

    .line 50
    .line 51
    and-int/lit8 v4, v5, 0x40

    .line 52
    .line 53
    if-nez v4, :cond_3

    .line 54
    .line 55
    invoke-virtual {v11, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    invoke-virtual {v11, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    :goto_2
    if-eqz v4, :cond_4

    .line 65
    .line 66
    const/16 v4, 0x20

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    const/16 v4, 0x10

    .line 70
    .line 71
    :goto_3
    or-int/2addr v2, v4

    .line 72
    :cond_5
    and-int/lit16 v4, v5, 0x180

    .line 73
    .line 74
    if-nez v4, :cond_7

    .line 75
    .line 76
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_6

    .line 81
    .line 82
    const/16 v4, 0x100

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_6
    const/16 v4, 0x80

    .line 86
    .line 87
    :goto_4
    or-int/2addr v2, v4

    .line 88
    :cond_7
    and-int/lit8 v4, p6, 0x8

    .line 89
    .line 90
    if-eqz v4, :cond_9

    .line 91
    .line 92
    or-int/lit16 v2, v2, 0xc00

    .line 93
    .line 94
    :cond_8
    move-object/from16 v6, p3

    .line 95
    .line 96
    goto :goto_6

    .line 97
    :cond_9
    and-int/lit16 v6, v5, 0xc00

    .line 98
    .line 99
    if-nez v6, :cond_8

    .line 100
    .line 101
    move-object/from16 v6, p3

    .line 102
    .line 103
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_a

    .line 108
    .line 109
    const/16 v7, 0x800

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_a
    const/16 v7, 0x400

    .line 113
    .line 114
    :goto_5
    or-int/2addr v2, v7

    .line 115
    :goto_6
    and-int/lit16 v7, v2, 0x493

    .line 116
    .line 117
    const/16 v8, 0x492

    .line 118
    .line 119
    const/4 v13, 0x0

    .line 120
    const/4 v9, 0x1

    .line 121
    if-eq v7, v8, :cond_b

    .line 122
    .line 123
    move v7, v9

    .line 124
    goto :goto_7

    .line 125
    :cond_b
    move v7, v13

    .line 126
    :goto_7
    and-int/lit8 v8, v2, 0x1

    .line 127
    .line 128
    invoke-virtual {v11, v8, v7}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-eqz v7, :cond_1b

    .line 133
    .line 134
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 135
    .line 136
    .line 137
    and-int/lit8 v7, v5, 0x1

    .line 138
    .line 139
    if-eqz v7, :cond_e

    .line 140
    .line 141
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    if-eqz v7, :cond_c

    .line 146
    .line 147
    goto :goto_8

    .line 148
    :cond_c
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 149
    .line 150
    .line 151
    and-int/lit8 v1, p6, 0x2

    .line 152
    .line 153
    if-eqz v1, :cond_d

    .line 154
    .line 155
    and-int/lit8 v2, v2, -0x71

    .line 156
    .line 157
    :cond_d
    move-object v7, p1

    .line 158
    move-object v10, v6

    .line 159
    move-object v6, p0

    .line 160
    goto :goto_9

    .line 161
    :cond_e
    :goto_8
    if-eqz v1, :cond_f

    .line 162
    .line 163
    sget-object p0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 164
    .line 165
    :cond_f
    and-int/lit8 v1, p6, 0x2

    .line 166
    .line 167
    if-eqz v1, :cond_10

    .line 168
    .line 169
    sget-object p1, Lnet/blip/shared/AvatarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 170
    .line 171
    invoke-virtual {v11, p1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Lnet/blip/shared/AvatarTheme;

    .line 176
    .line 177
    check-cast p1, Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;

    .line 178
    .line 179
    invoke-virtual {p1, v11}, Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;->c(Landroidx/compose/runtime/Composer;)Lnet/blip/shared/AvatarTheme$Appearance;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    and-int/lit8 v2, v2, -0x71

    .line 184
    .line 185
    :cond_10
    if-eqz v4, :cond_d

    .line 186
    .line 187
    sget-object v1, Lnet/blip/shared/AvatarKt;->b:Lh;

    .line 188
    .line 189
    move-object v6, p0

    .line 190
    move-object v7, p1

    .line 191
    move-object v10, v1

    .line 192
    :goto_9
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result p0

    .line 199
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 204
    .line 205
    if-nez p0, :cond_11

    .line 206
    .line 207
    if-ne p1, v1, :cond_17

    .line 208
    .line 209
    :cond_11
    invoke-static {v0}, Lkotlin/text/StringsKt;->U(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    const-string p1, " "

    .line 218
    .line 219
    filled-new-array {p1}, [Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    const/4 v0, 0x6

    .line 224
    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->G(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    new-instance p1, Ljava/util/ArrayList;

    .line 229
    .line 230
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    :cond_12
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-eqz v0, :cond_13

    .line 242
    .line 243
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    move-object v4, v0

    .line 248
    check-cast v4, Ljava/lang/String;

    .line 249
    .line 250
    invoke-static {v4}, Lkotlin/text/StringsKt;->t(Ljava/lang/CharSequence;)Z

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    if-nez v4, :cond_12

    .line 255
    .line 256
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    goto :goto_a

    .line 260
    :cond_13
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 261
    .line 262
    .line 263
    move-result p0

    .line 264
    if-nez p0, :cond_14

    .line 265
    .line 266
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    check-cast p0, Ljava/lang/String;

    .line 271
    .line 272
    invoke-static {v9, p0}, Lkotlin/text/StringsKt;->Q(ILjava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    goto :goto_b

    .line 277
    :cond_14
    const-string p0, ""

    .line 278
    .line 279
    :goto_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-le v0, v9, :cond_15

    .line 284
    .line 285
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    check-cast p1, Ljava/lang/String;

    .line 290
    .line 291
    invoke-static {v9, p1}, Lkotlin/text/StringsKt;->Q(ILjava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    :cond_15
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 300
    .line 301
    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    invoke-static {p0}, Lkotlin/text/StringsKt;->t(Ljava/lang/CharSequence;)Z

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    if-eqz p1, :cond_16

    .line 313
    .line 314
    const/4 p0, 0x0

    .line 315
    :cond_16
    move-object p1, p0

    .line 316
    invoke-virtual {v11, p1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    :cond_17
    check-cast p1, Ljava/lang/String;

    .line 320
    .line 321
    invoke-static {v3}, Lnet/blip/libblip/User_DerivedKt;->b(Lnet/blip/libblip/User;)Z

    .line 322
    .line 323
    .line 324
    move-result p0

    .line 325
    if-eqz p0, :cond_18

    .line 326
    .line 327
    const p0, 0x224ed68c

    .line 328
    .line 329
    .line 330
    invoke-virtual {v11, p0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 331
    .line 332
    .line 333
    iget-object v8, v3, Lnet/blip/libblip/User;->q:Lokio/ByteString;

    .line 334
    .line 335
    invoke-static {}, Ljava/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    .line 336
    .line 337
    .line 338
    move-result-object p0

    .line 339
    invoke-virtual {p0}, Ljava/util/Base64$Encoder;->withoutPadding()Ljava/util/Base64$Encoder;

    .line 340
    .line 341
    .line 342
    move-result-object p0

    .line 343
    iget-object p1, v3, Lnet/blip/libblip/User;->p:Lokio/ByteString;

    .line 344
    .line 345
    invoke-virtual {p1}, Lokio/ByteString;->r()[B

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    invoke-virtual {p0, p1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v9

    .line 353
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    and-int/lit8 p0, v2, 0x7e

    .line 357
    .line 358
    shl-int/lit8 p1, v2, 0x3

    .line 359
    .line 360
    const v0, 0xe000

    .line 361
    .line 362
    .line 363
    and-int/2addr p1, v0

    .line 364
    or-int v12, p0, p1

    .line 365
    .line 366
    invoke-static/range {v6 .. v12}, Lnet/blip/shared/AvatarKt;->g(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme$Appearance;Lokio/ByteString;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 370
    .line 371
    .line 372
    goto :goto_c

    .line 373
    :cond_18
    if-eqz p1, :cond_19

    .line 374
    .line 375
    const p0, 0x225300c7

    .line 376
    .line 377
    .line 378
    invoke-virtual {v11, p0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 379
    .line 380
    .line 381
    and-int/lit8 p0, v2, 0x7e

    .line 382
    .line 383
    invoke-static {v6, v7, p1, v11, p0}, Lnet/blip/shared/AvatarKt;->f(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme$Appearance;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 387
    .line 388
    .line 389
    goto :goto_c

    .line 390
    :cond_19
    const p0, 0x2254913c

    .line 391
    .line 392
    .line 393
    invoke-virtual {v11, p0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object p0

    .line 400
    if-ne p0, v1, :cond_1a

    .line 401
    .line 402
    new-instance p0, Lh;

    .line 403
    .line 404
    const/16 p1, 0x13

    .line 405
    .line 406
    invoke-direct {p0, p1}, Lh;-><init>(I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v11, p0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    :cond_1a
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 413
    .line 414
    and-int/lit8 p1, v2, 0xe

    .line 415
    .line 416
    or-int/lit16 p1, p1, 0x180

    .line 417
    .line 418
    and-int/lit8 v0, v2, 0x70

    .line 419
    .line 420
    or-int/2addr p1, v0

    .line 421
    invoke-static {v6, v7, p0, v11, p1}, Lnet/blip/shared/AvatarKt;->e(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme$Appearance;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 425
    .line 426
    .line 427
    :goto_c
    move-object v1, v6

    .line 428
    move-object v2, v7

    .line 429
    move-object v4, v10

    .line 430
    goto :goto_d

    .line 431
    :cond_1b
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 432
    .line 433
    .line 434
    move-object v1, p0

    .line 435
    move-object v2, p1

    .line 436
    move-object v4, v6

    .line 437
    :goto_d
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 438
    .line 439
    .line 440
    move-result-object p0

    .line 441
    if-eqz p0, :cond_1c

    .line 442
    .line 443
    new-instance v0, Lu1;

    .line 444
    .line 445
    const/4 v7, 0x2

    .line 446
    move/from16 v6, p6

    .line 447
    .line 448
    invoke-direct/range {v0 .. v7}, Lu1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 449
    .line 450
    .line 451
    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 452
    .line 453
    :cond_1c
    return-void
.end method

.method public static final d(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 14

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    move/from16 v5, p5

    .line 4
    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-object/from16 v10, p4

    .line 9
    .line 10
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    const v0, -0x58f627b3

    .line 13
    .line 14
    .line 15
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    .line 18
    and-int/lit8 v0, p6, 0x1

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    or-int/lit8 v1, v5, 0x6

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    and-int/lit8 v1, v5, 0x6

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v10, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x2

    .line 38
    :goto_0
    or-int/2addr v1, v5

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move v1, v5

    .line 41
    :goto_1
    and-int/lit8 v2, v5, 0x30

    .line 42
    .line 43
    if-nez v2, :cond_5

    .line 44
    .line 45
    and-int/lit8 v2, p6, 0x2

    .line 46
    .line 47
    if-nez v2, :cond_4

    .line 48
    .line 49
    and-int/lit8 v2, v5, 0x40

    .line 50
    .line 51
    if-nez v2, :cond_3

    .line 52
    .line 53
    invoke-virtual {v10, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    invoke-virtual {v10, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    :goto_2
    if-eqz v2, :cond_4

    .line 63
    .line 64
    const/16 v2, 0x20

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_4
    const/16 v2, 0x10

    .line 68
    .line 69
    :goto_3
    or-int/2addr v1, v2

    .line 70
    :cond_5
    and-int/lit16 v2, v5, 0x180

    .line 71
    .line 72
    if-nez v2, :cond_7

    .line 73
    .line 74
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_6

    .line 79
    .line 80
    const/16 v2, 0x100

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_6
    const/16 v2, 0x80

    .line 84
    .line 85
    :goto_4
    or-int/2addr v1, v2

    .line 86
    :cond_7
    and-int/lit8 v2, p6, 0x8

    .line 87
    .line 88
    if-eqz v2, :cond_9

    .line 89
    .line 90
    or-int/lit16 v1, v1, 0xc00

    .line 91
    .line 92
    :cond_8
    move-object/from16 v4, p3

    .line 93
    .line 94
    goto :goto_6

    .line 95
    :cond_9
    and-int/lit16 v4, v5, 0xc00

    .line 96
    .line 97
    if-nez v4, :cond_8

    .line 98
    .line 99
    move-object/from16 v4, p3

    .line 100
    .line 101
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_a

    .line 106
    .line 107
    const/16 v6, 0x800

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_a
    const/16 v6, 0x400

    .line 111
    .line 112
    :goto_5
    or-int/2addr v1, v6

    .line 113
    :goto_6
    and-int/lit16 v6, v1, 0x493

    .line 114
    .line 115
    const/16 v7, 0x492

    .line 116
    .line 117
    const/4 v13, 0x0

    .line 118
    if-eq v6, v7, :cond_b

    .line 119
    .line 120
    const/4 v6, 0x1

    .line 121
    goto :goto_7

    .line 122
    :cond_b
    move v6, v13

    .line 123
    :goto_7
    and-int/lit8 v7, v1, 0x1

    .line 124
    .line 125
    invoke-virtual {v10, v7, v6}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_13

    .line 130
    .line 131
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 132
    .line 133
    .line 134
    and-int/lit8 v6, v5, 0x1

    .line 135
    .line 136
    if-eqz v6, :cond_e

    .line 137
    .line 138
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    if-eqz v6, :cond_c

    .line 143
    .line 144
    goto :goto_8

    .line 145
    :cond_c
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 146
    .line 147
    .line 148
    and-int/lit8 v0, p6, 0x2

    .line 149
    .line 150
    if-eqz v0, :cond_d

    .line 151
    .line 152
    and-int/lit8 v1, v1, -0x71

    .line 153
    .line 154
    :cond_d
    move-object v6, p0

    .line 155
    move-object v9, v4

    .line 156
    goto :goto_9

    .line 157
    :cond_e
    :goto_8
    if-eqz v0, :cond_f

    .line 158
    .line 159
    sget-object p0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 160
    .line 161
    :cond_f
    and-int/lit8 v0, p6, 0x2

    .line 162
    .line 163
    if-eqz v0, :cond_10

    .line 164
    .line 165
    sget-object p1, Lnet/blip/shared/AvatarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 166
    .line 167
    invoke-virtual {v10, p1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    check-cast p1, Lnet/blip/shared/AvatarTheme;

    .line 172
    .line 173
    and-int/lit8 v1, v1, -0x71

    .line 174
    .line 175
    :cond_10
    if-eqz v2, :cond_d

    .line 176
    .line 177
    sget-object v0, Lnet/blip/shared/AvatarKt;->b:Lh;

    .line 178
    .line 179
    move-object v6, p0

    .line 180
    move-object v9, v0

    .line 181
    :goto_9
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 182
    .line 183
    .line 184
    instance-of p0, v3, Lnet/blip/libblip/Peer$User;

    .line 185
    .line 186
    if-eqz p0, :cond_11

    .line 187
    .line 188
    const p0, 0xbf5143c

    .line 189
    .line 190
    .line 191
    invoke-virtual {v10, p0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 192
    .line 193
    .line 194
    move-object p0, p1

    .line 195
    check-cast p0, Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;

    .line 196
    .line 197
    invoke-virtual {p0, v10}, Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;->c(Landroidx/compose/runtime/Composer;)Lnet/blip/shared/AvatarTheme$Appearance;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    move-object p0, v3

    .line 202
    check-cast p0, Lnet/blip/libblip/Peer$User;

    .line 203
    .line 204
    iget-object v8, p0, Lnet/blip/libblip/Peer$User;->j:Lnet/blip/libblip/User;

    .line 205
    .line 206
    and-int/lit16 v11, v1, 0x1c0e

    .line 207
    .line 208
    const/4 v12, 0x0

    .line 209
    invoke-static/range {v6 .. v12}, Lnet/blip/shared/AvatarKt;->c(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme$Appearance;Lnet/blip/libblip/User;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 213
    .line 214
    .line 215
    goto :goto_a

    .line 216
    :cond_11
    instance-of p0, v3, Lnet/blip/libblip/Peer$Device;

    .line 217
    .line 218
    if-eqz p0, :cond_12

    .line 219
    .line 220
    const p0, 0xbf524e3

    .line 221
    .line 222
    .line 223
    invoke-virtual {v10, p0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 224
    .line 225
    .line 226
    shr-int/lit8 p0, v1, 0x3

    .line 227
    .line 228
    and-int/lit8 p0, p0, 0xe

    .line 229
    .line 230
    move-object v0, p1

    .line 231
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;

    .line 232
    .line 233
    invoke-virtual {v0, p0, v10}, Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;->a(ILandroidx/compose/runtime/Composer;)Lnet/blip/shared/AvatarTheme$Appearance;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    move-object v0, v3

    .line 238
    check-cast v0, Lnet/blip/libblip/Peer$Device;

    .line 239
    .line 240
    iget-object v0, v0, Lnet/blip/libblip/Peer$Device;->j:Lnet/blip/libblip/Device;

    .line 241
    .line 242
    and-int/lit8 v1, v1, 0xe

    .line 243
    .line 244
    invoke-static {v6, p0, v0, v10, v1}, Lnet/blip/shared/AvatarKt;->a(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme$Appearance;Lnet/blip/libblip/Device;Landroidx/compose/runtime/Composer;I)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 248
    .line 249
    .line 250
    :goto_a
    move-object v1, v6

    .line 251
    move-object v4, v9

    .line 252
    :goto_b
    move-object v2, p1

    .line 253
    goto :goto_c

    .line 254
    :cond_12
    const p0, 0xbf5108d

    .line 255
    .line 256
    .line 257
    invoke-virtual {v10, p0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 261
    .line 262
    .line 263
    invoke-static {}, Lk8;->e()V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :cond_13
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 268
    .line 269
    .line 270
    move-object v1, p0

    .line 271
    goto :goto_b

    .line 272
    :goto_c
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    if-eqz p0, :cond_14

    .line 277
    .line 278
    new-instance v0, Lu1;

    .line 279
    .line 280
    const/4 v7, 0x1

    .line 281
    move/from16 v6, p6

    .line 282
    .line 283
    invoke-direct/range {v0 .. v7}, Lu1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 284
    .line 285
    .line 286
    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 287
    .line 288
    :cond_14
    return-void
.end method

.method public static final e(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme$Appearance;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-object v3, p3

    .line 8
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const p3, 0xc4d7660

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, p3}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    and-int/lit8 p3, p4, 0x6

    .line 17
    .line 18
    if-nez p3, :cond_1

    .line 19
    .line 20
    invoke-virtual {v3, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-eqz p3, :cond_0

    .line 25
    .line 26
    const/4 p3, 0x4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p3, 0x2

    .line 29
    :goto_0
    or-int/2addr p3, p4

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move p3, p4

    .line 32
    :goto_1
    and-int/lit8 v0, p4, 0x30

    .line 33
    .line 34
    if-nez v0, :cond_4

    .line 35
    .line 36
    and-int/lit8 v0, p4, 0x40

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    :goto_2
    if-eqz v0, :cond_3

    .line 50
    .line 51
    const/16 v0, 0x20

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    const/16 v0, 0x10

    .line 55
    .line 56
    :goto_3
    or-int/2addr p3, v0

    .line 57
    :cond_4
    and-int/lit16 v0, p4, 0x180

    .line 58
    .line 59
    if-nez v0, :cond_6

    .line 60
    .line 61
    invoke-virtual {v3, p2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    const/16 v0, 0x100

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_5
    const/16 v0, 0x80

    .line 71
    .line 72
    :goto_4
    or-int/2addr p3, v0

    .line 73
    :cond_6
    and-int/lit16 v0, p3, 0x93

    .line 74
    .line 75
    const/16 v1, 0x92

    .line 76
    .line 77
    const/4 v2, 0x1

    .line 78
    if-eq v0, v1, :cond_7

    .line 79
    .line 80
    move v0, v2

    .line 81
    goto :goto_5

    .line 82
    :cond_7
    const/4 v0, 0x0

    .line 83
    :goto_5
    and-int/2addr p3, v2

    .line 84
    invoke-virtual {v3, p3, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 85
    .line 86
    .line 87
    move-result p3

    .line 88
    if-eqz p3, :cond_8

    .line 89
    .line 90
    iget-object p3, p1, Lnet/blip/shared/AvatarTheme$Appearance;->a:Landroidx/compose/ui/graphics/Shape;

    .line 91
    .line 92
    invoke-static {p0, p3}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    iget-wide v0, p1, Lnet/blip/shared/AvatarTheme$Appearance;->b:J

    .line 97
    .line 98
    sget-object v4, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 99
    .line 100
    invoke-static {p3, v0, v1, v4}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    invoke-static {p3}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    const/high16 v0, 0x3f800000    # 1.0f

    .line 109
    .line 110
    invoke-static {p3, v0}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    new-instance p3, Li0;

    .line 115
    .line 116
    invoke-direct {p3, v2, p2, p1}, Li0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    const v1, -0x733c20b6

    .line 120
    .line 121
    .line 122
    invoke-static {v1, p3, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    const/16 v4, 0xc30

    .line 127
    .line 128
    const/4 v5, 0x4

    .line 129
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 130
    .line 131
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 132
    .line 133
    .line 134
    goto :goto_6

    .line 135
    :cond_8
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 136
    .line 137
    .line 138
    :goto_6
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    if-eqz p3, :cond_9

    .line 143
    .line 144
    new-instance v0, Lb1;

    .line 145
    .line 146
    const/4 v5, 0x3

    .line 147
    move-object v1, p0

    .line 148
    move-object v2, p1

    .line 149
    move-object v3, p2

    .line 150
    move v4, p4

    .line 151
    invoke-direct/range {v0 .. v5}, Lb1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 152
    .line 153
    .line 154
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 155
    .line 156
    :cond_9
    return-void
.end method

.method public static final f(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme$Appearance;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object v3, p3

    .line 5
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const p3, 0x98cc4e4

    .line 8
    .line 9
    .line 10
    invoke-virtual {v3, p3}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 p3, p4, 0x6

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    if-nez p3, :cond_1

    .line 17
    .line 18
    invoke-virtual {v3, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    const/4 p3, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move p3, v0

    .line 27
    :goto_0
    or-int/2addr p3, p4

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move p3, p4

    .line 30
    :goto_1
    and-int/lit8 v1, p4, 0x30

    .line 31
    .line 32
    if-nez v1, :cond_4

    .line 33
    .line 34
    and-int/lit8 v1, p4, 0x40

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    :goto_2
    if-eqz v1, :cond_3

    .line 48
    .line 49
    const/16 v1, 0x20

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_3
    const/16 v1, 0x10

    .line 53
    .line 54
    :goto_3
    or-int/2addr p3, v1

    .line 55
    :cond_4
    and-int/lit16 v1, p4, 0x180

    .line 56
    .line 57
    if-nez v1, :cond_6

    .line 58
    .line 59
    invoke-virtual {v3, p2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    const/16 v1, 0x100

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_5
    const/16 v1, 0x80

    .line 69
    .line 70
    :goto_4
    or-int/2addr p3, v1

    .line 71
    :cond_6
    and-int/lit16 v1, p3, 0x93

    .line 72
    .line 73
    const/16 v2, 0x92

    .line 74
    .line 75
    const/4 v4, 0x1

    .line 76
    if-eq v1, v2, :cond_7

    .line 77
    .line 78
    move v1, v4

    .line 79
    goto :goto_5

    .line 80
    :cond_7
    const/4 v1, 0x0

    .line 81
    :goto_5
    and-int/2addr p3, v4

    .line 82
    invoke-virtual {v3, p3, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    if-eqz p3, :cond_8

    .line 87
    .line 88
    iget-object p3, p1, Lnet/blip/shared/AvatarTheme$Appearance;->a:Landroidx/compose/ui/graphics/Shape;

    .line 89
    .line 90
    invoke-static {p0, p3}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    iget-wide v1, p1, Lnet/blip/shared/AvatarTheme$Appearance;->b:J

    .line 95
    .line 96
    sget-object v4, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 97
    .line 98
    invoke-static {p3, v1, v2, v4}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    invoke-static {p3}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    const/high16 v1, 0x3f800000    # 1.0f

    .line 107
    .line 108
    invoke-static {p3, v1}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    new-instance v1, Li0;

    .line 113
    .line 114
    invoke-direct {v1, v0, p1, p2}, Li0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    const v0, -0x7a0fd0c6

    .line 118
    .line 119
    .line 120
    invoke-static {v0, v1, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    const/16 v4, 0xc30

    .line 125
    .line 126
    const/4 v5, 0x4

    .line 127
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 128
    .line 129
    move-object v0, p3

    .line 130
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 131
    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_8
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 135
    .line 136
    .line 137
    :goto_6
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    if-eqz p3, :cond_9

    .line 142
    .line 143
    new-instance v0, Lb1;

    .line 144
    .line 145
    const/4 v5, 0x5

    .line 146
    move-object v1, p0

    .line 147
    move-object v2, p1

    .line 148
    move-object v3, p2

    .line 149
    move v4, p4

    .line 150
    invoke-direct/range {v0 .. v5}, Lb1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 151
    .line 152
    .line 153
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 154
    .line 155
    :cond_9
    return-void
.end method

.method public static final g(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme$Appearance;Lokio/ByteString;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-object v3, p5

    .line 8
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const p5, 0x55b978a4

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, p5}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    and-int/lit8 p5, p6, 0x6

    .line 17
    .line 18
    if-nez p5, :cond_1

    .line 19
    .line 20
    invoke-virtual {v3, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p5

    .line 24
    if-eqz p5, :cond_0

    .line 25
    .line 26
    const/4 p5, 0x4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p5, 0x2

    .line 29
    :goto_0
    or-int/2addr p5, p6

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move p5, p6

    .line 32
    :goto_1
    and-int/lit8 v0, p6, 0x30

    .line 33
    .line 34
    if-nez v0, :cond_4

    .line 35
    .line 36
    and-int/lit8 v0, p6, 0x40

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    :goto_2
    if-eqz v0, :cond_3

    .line 50
    .line 51
    const/16 v0, 0x20

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    const/16 v0, 0x10

    .line 55
    .line 56
    :goto_3
    or-int/2addr p5, v0

    .line 57
    :cond_4
    and-int/lit16 v0, p6, 0x180

    .line 58
    .line 59
    if-nez v0, :cond_6

    .line 60
    .line 61
    invoke-virtual {v3, p2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    const/16 v0, 0x100

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_5
    const/16 v0, 0x80

    .line 71
    .line 72
    :goto_4
    or-int/2addr p5, v0

    .line 73
    :cond_6
    and-int/lit16 v0, p6, 0xc00

    .line 74
    .line 75
    if-nez v0, :cond_8

    .line 76
    .line 77
    invoke-virtual {v3, p3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_7

    .line 82
    .line 83
    const/16 v0, 0x800

    .line 84
    .line 85
    goto :goto_5

    .line 86
    :cond_7
    const/16 v0, 0x400

    .line 87
    .line 88
    :goto_5
    or-int/2addr p5, v0

    .line 89
    :cond_8
    and-int/lit16 v0, p6, 0x6000

    .line 90
    .line 91
    if-nez v0, :cond_a

    .line 92
    .line 93
    invoke-virtual {v3, p4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_9

    .line 98
    .line 99
    const/16 v0, 0x4000

    .line 100
    .line 101
    goto :goto_6

    .line 102
    :cond_9
    const/16 v0, 0x2000

    .line 103
    .line 104
    :goto_6
    or-int/2addr p5, v0

    .line 105
    :cond_a
    and-int/lit16 v0, p5, 0x2493

    .line 106
    .line 107
    const/16 v1, 0x2492

    .line 108
    .line 109
    const/4 v2, 0x1

    .line 110
    if-eq v0, v1, :cond_b

    .line 111
    .line 112
    move v0, v2

    .line 113
    goto :goto_7

    .line 114
    :cond_b
    const/4 v0, 0x0

    .line 115
    :goto_7
    and-int/2addr p5, v2

    .line 116
    invoke-virtual {v3, p5, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 117
    .line 118
    .line 119
    move-result p5

    .line 120
    if-eqz p5, :cond_c

    .line 121
    .line 122
    iget-object p5, p1, Lnet/blip/shared/AvatarTheme$Appearance;->a:Landroidx/compose/ui/graphics/Shape;

    .line 123
    .line 124
    invoke-static {p0, p5}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 125
    .line 126
    .line 127
    move-result-object p5

    .line 128
    invoke-static {p5}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 129
    .line 130
    .line 131
    move-result-object p5

    .line 132
    const/high16 v0, 0x3f800000    # 1.0f

    .line 133
    .line 134
    invoke-static {p5, v0}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    new-instance p5, Lw3;

    .line 139
    .line 140
    invoke-direct {p5, p2, p3, p4}, Lw3;-><init>(Lokio/ByteString;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 141
    .line 142
    .line 143
    const v1, 0x138c0fa

    .line 144
    .line 145
    .line 146
    invoke-static {v1, p5, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    const/16 v4, 0xc30

    .line 151
    .line 152
    const/4 v5, 0x4

    .line 153
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 154
    .line 155
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 156
    .line 157
    .line 158
    goto :goto_8

    .line 159
    :cond_c
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 160
    .line 161
    .line 162
    :goto_8
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 163
    .line 164
    .line 165
    move-result-object p5

    .line 166
    if-eqz p5, :cond_d

    .line 167
    .line 168
    new-instance v0, Lx3;

    .line 169
    .line 170
    const/4 v7, 0x0

    .line 171
    move-object v1, p0

    .line 172
    move-object v2, p1

    .line 173
    move-object v3, p2

    .line 174
    move-object v4, p3

    .line 175
    move-object v5, p4

    .line 176
    move v6, p6

    .line 177
    invoke-direct/range {v0 .. v7}, Lx3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 178
    .line 179
    .line 180
    iput-object v0, p5, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 181
    .line 182
    :cond_d
    return-void
.end method
