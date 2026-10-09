.class public final synthetic Lc8;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lc8;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lc8;->k:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lc8;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lc8;->k:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lcoil3/compose/AsyncImagePainter$State;

    .line 10
    .line 11
    sget v0, Lcoil3/compose/internal/UtilsKt;->b:I

    .line 12
    .line 13
    instance-of v0, p1, Lcoil3/compose/AsyncImagePainter$State$Loading;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    instance-of v0, p1, Lcoil3/compose/AsyncImagePainter$State$Success;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    if-eqz p0, :cond_3

    .line 23
    .line 24
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    instance-of p0, p1, Lcoil3/compose/AsyncImagePainter$State$Error;

    .line 29
    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    instance-of p0, p1, Lcoil3/compose/AsyncImagePainter$State$Empty;

    .line 34
    .line 35
    if-eqz p0, :cond_4

    .line 36
    .line 37
    :cond_3
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_4
    invoke-static {}, Lk8;->e()V

    .line 41
    .line 42
    .line 43
    :goto_1
    return-object v1

    .line 44
    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :pswitch_1
    check-cast p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 55
    .line 56
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->a:Lle;

    .line 57
    .line 58
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 63
    .line 64
    sget-object p1, Landroidx/compose/runtime/snapshots/SnapshotKt;->c:Ljava/lang/Object;

    .line 65
    .line 66
    monitor-enter p1

    .line 67
    :try_start_0
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->d:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->g()J

    .line 70
    .line 71
    .line 72
    move-result-wide v1

    .line 73
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->f(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->d:Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    monitor-exit p1

    .line 80
    return-object p0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    monitor-exit p1

    .line 83
    throw p0

    .line 84
    :pswitch_2
    check-cast p1, Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    new-instance v0, Lnet/blip/libblip/event/SetUserAvatar;

    .line 90
    .line 91
    invoke-direct {v0, p1}, Lnet/blip/libblip/event/SetUserAvatar;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 98
    .line 99
    return-object p0

    .line 100
    :pswitch_3
    check-cast p1, Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    new-instance v0, Lnet/blip/libblip/event/UpdateUser;

    .line 106
    .line 107
    const/4 v2, 0x6

    .line 108
    invoke-direct {v0, p1, v1, v2}, Lnet/blip/libblip/event/UpdateUser;-><init>(Ljava/lang/String;Ljava/lang/Boolean;I)V

    .line 109
    .line 110
    .line 111
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 115
    .line 116
    return-object p0

    .line 117
    :pswitch_4
    check-cast p1, Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    new-instance v0, Lnet/blip/libblip/event/SetUserAvatar;

    .line 123
    .line 124
    invoke-direct {v0, p1}, Lnet/blip/libblip/event/SetUserAvatar;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 131
    .line 132
    return-object p0

    .line 133
    :pswitch_5
    check-cast p1, Lnet/blip/android/netstatus/NetworkObservation;

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    iget-wide v0, p1, Lnet/blip/android/netstatus/NetworkObservation;->b:J

    .line 139
    .line 140
    iget-boolean p1, p1, Lnet/blip/android/netstatus/NetworkObservation;->a:Z

    .line 141
    .line 142
    if-eqz p1, :cond_5

    .line 143
    .line 144
    new-instance p1, Lnet/blip/libblip/event/NetworkAvailable;

    .line 145
    .line 146
    const-string v2, "unknown"

    .line 147
    .line 148
    sget-object v3, Lokio/ByteString;->m:Lokio/ByteString;

    .line 149
    .line 150
    invoke-direct {p1, v2, v0, v1, v3}, Lnet/blip/libblip/event/NetworkAvailable;-><init>(Ljava/lang/String;JLokio/ByteString;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_5
    new-instance p1, Lnet/blip/libblip/event/NetworkUnavailable;

    .line 158
    .line 159
    sget-object v2, Lokio/ByteString;->m:Lokio/ByteString;

    .line 160
    .line 161
    invoke-direct {p1, v0, v1, v2}, Lnet/blip/libblip/event/NetworkUnavailable;-><init>(JLokio/ByteString;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 168
    .line 169
    return-object p0

    .line 170
    :pswitch_6
    check-cast p1, Ljava/util/List;

    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-nez v0, :cond_7

    .line 180
    .line 181
    new-instance v0, Ljava/util/ArrayList;

    .line 182
    .line 183
    const/16 v1, 0xa

    .line 184
    .line 185
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    .line 191
    .line 192
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_6

    .line 201
    .line 202
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    check-cast v1, Ljava/lang/String;

    .line 207
    .line 208
    invoke-static {v1}, Lnet/blip/android/UriUtilKt;->a(Ljava/lang/String;)Landroid/net/Uri;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_6
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    :cond_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 220
    .line 221
    return-object p0

    .line 222
    :pswitch_7
    check-cast p1, Landroidx/compose/material/DrawerValue;

    .line 223
    .line 224
    new-instance v0, Landroidx/compose/material/DrawerState;

    .line 225
    .line 226
    invoke-direct {v0, p1, p0}, Landroidx/compose/material/DrawerState;-><init>(Landroidx/compose/material/DrawerValue;Lkotlin/jvm/functions/Function1;)V

    .line 227
    .line 228
    .line 229
    return-object v0

    .line 230
    nop

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
