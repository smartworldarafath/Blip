.class public abstract Lcom/google/accompanist/permissions/PermissionStateKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Lcom/google/accompanist/permissions/PermissionState;
    .locals 7

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x37042c49

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 7
    .line 8
    .line 9
    const v0, -0x673dae26

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Landroidx/compose/ui/platform/InspectionModeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    new-instance p1, Lcom/google/accompanist/permissions/PreviewPermissionState;

    .line 31
    .line 32
    sget-object v0, Lcom/google/accompanist/permissions/PermissionStatus$Granted;->a:Lcom/google/accompanist/permissions/PermissionStatus$Granted;

    .line 33
    .line 34
    invoke-direct {p1, p0, v0}, Lcom/google/accompanist/permissions/PreviewPermissionState;-><init>(Ljava/lang/String;Lcom/google/accompanist/permissions/PermissionStatus;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_0
    const v0, 0x54e42f85

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 43
    .line 44
    .line 45
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 46
    .line 47
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/content/Context;

    .line 52
    .line 53
    const v2, 0x439d2ca5

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const/4 v3, 0x0

    .line 64
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 65
    .line 66
    if-ne v2, v4, :cond_3

    .line 67
    .line 68
    new-instance v2, Lcom/google/accompanist/permissions/MutablePermissionState;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-object v5, v0

    .line 74
    :goto_0
    instance-of v6, v5, Landroid/content/ContextWrapper;

    .line 75
    .line 76
    if-eqz v6, :cond_2

    .line 77
    .line 78
    instance-of v6, v5, Landroid/app/Activity;

    .line 79
    .line 80
    if-eqz v6, :cond_1

    .line 81
    .line 82
    check-cast v5, Landroid/app/Activity;

    .line 83
    .line 84
    invoke-direct {v2, p0, v0, v5}, Lcom/google/accompanist/permissions/MutablePermissionState;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/app/Activity;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    check-cast v5, Landroid/content/ContextWrapper;

    .line 92
    .line 93
    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    const-string p0, "Permissions should be called in the context of an Activity"

    .line 99
    .line 100
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-object v3

    .line 104
    :cond_3
    :goto_1
    move-object p0, v2

    .line 105
    check-cast p0, Lcom/google/accompanist/permissions/MutablePermissionState;

    .line 106
    .line 107
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 108
    .line 109
    .line 110
    invoke-static {p0, v3, p2, v1}, Lcom/google/accompanist/permissions/PermissionsUtilKt;->a(Lcom/google/accompanist/permissions/MutablePermissionState;Landroidx/lifecycle/Lifecycle$Event;Landroidx/compose/runtime/Composer;I)V

    .line 111
    .line 112
    .line 113
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 116
    .line 117
    .line 118
    const v2, 0x439d5ed5

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    or-int/2addr v2, v3

    .line 133
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    if-nez v2, :cond_4

    .line 138
    .line 139
    if-ne v3, v4, :cond_5

    .line 140
    .line 141
    :cond_4
    new-instance v3, Lb;

    .line 142
    .line 143
    const/16 v2, 0x17

    .line 144
    .line 145
    invoke-direct {v3, v2, p0, p1}, Lb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_5
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 152
    .line 153
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 154
    .line 155
    .line 156
    invoke-static {v0, v3, p2}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Landroidx/activity/compose/ManagedActivityResultLauncher;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    const v0, 0x439d701a

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    or-int/2addr v0, v2

    .line 175
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    if-nez v0, :cond_6

    .line 180
    .line 181
    if-ne v2, v4, :cond_7

    .line 182
    .line 183
    :cond_6
    new-instance v2, Lb;

    .line 184
    .line 185
    const/16 v0, 0x18

    .line 186
    .line 187
    invoke-direct {v2, v0, p0, p1}, Lb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_7
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 194
    .line 195
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 196
    .line 197
    .line 198
    invoke-static {p0, p1, v2, p2}, Landroidx/compose/runtime/EffectsKt;->b(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 202
    .line 203
    .line 204
    move-object p1, p0

    .line 205
    :goto_2
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 209
    .line 210
    .line 211
    return-object p1
.end method
