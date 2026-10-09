.class public abstract Lnet/blip/android/ui/dialogs/BlockUserConfirmationDialogKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lnet/blip/libblip/User;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-object v9, p3

    .line 8
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const v0, -0x4763c6c7

    .line 11
    .line 12
    .line 13
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v9, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x2

    .line 25
    :goto_0
    or-int v0, p4, v0

    .line 26
    .line 27
    invoke-virtual {v9, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    const/16 v3, 0x20

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 v3, 0x10

    .line 37
    .line 38
    :goto_1
    or-int/2addr v0, v3

    .line 39
    and-int/lit16 v3, v0, 0x93

    .line 40
    .line 41
    const/16 v4, 0x92

    .line 42
    .line 43
    const/4 v5, 0x1

    .line 44
    if-eq v3, v4, :cond_2

    .line 45
    .line 46
    move v3, v5

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/4 v3, 0x0

    .line 49
    :goto_2
    and-int/2addr v0, v5

    .line 50
    invoke-virtual {v9, v0, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-static {p0}, Lnet/blip/libblip/User_DerivedKt;->a(Lnet/blip/libblip/User;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v4, "Block "

    .line 66
    .line 67
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v0, "?"

    .line 74
    .line 75
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    iget-object v0, p0, Lnet/blip/libblip/User;->o:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v4, p0, Lnet/blip/libblip/User;->n:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {p0}, Lnet/blip/libblip/User_DerivedKt;->c(Lnet/blip/libblip/User;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    new-instance v6, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, " ("

    .line 99
    .line 100
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v0, ") won\'t be able to send you things.\r\n"

    .line 107
    .line 108
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v0, " won\u2019t know that you blocked them."

    .line 115
    .line 116
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    new-instance v6, Lkotlin/Pair;

    .line 124
    .line 125
    const-string v0, "Block"

    .line 126
    .line 127
    invoke-direct {v6, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    new-instance v7, Lkotlin/Pair;

    .line 131
    .line 132
    const-string v0, "Cancel"

    .line 133
    .line 134
    invoke-direct {v7, v0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    const v10, 0x30180

    .line 138
    .line 139
    .line 140
    const/4 v11, 0x0

    .line 141
    const/4 v5, 0x1

    .line 142
    move-object v8, p2

    .line 143
    invoke-static/range {v3 .. v11}, Lnet/blip/android/ui/components/AlertDialogKt;->a(Ljava/lang/String;Ljava/lang/String;ZLkotlin/Pair;Lkotlin/Pair;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_3
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 148
    .line 149
    .line 150
    :goto_3
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    if-eqz v6, :cond_4

    .line 155
    .line 156
    new-instance v0, Lu;

    .line 157
    .line 158
    const/4 v5, 0x4

    .line 159
    move-object v1, p0

    .line 160
    move-object v2, p1

    .line 161
    move-object v3, p2

    .line 162
    move/from16 v4, p4

    .line 163
    .line 164
    invoke-direct/range {v0 .. v5}, Lu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 165
    .line 166
    .line 167
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 168
    .line 169
    :cond_4
    return-void
.end method
