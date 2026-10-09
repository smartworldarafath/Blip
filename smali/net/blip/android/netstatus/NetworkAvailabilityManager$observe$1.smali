.class public final Lnet/blip/android/netstatus/NetworkAvailabilityManager$observe$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic a:Lnet/blip/android/netstatus/NetworkGenerationTracker;

.field public final synthetic b:Lc8;


# direct methods
.method public constructor <init>(Lnet/blip/android/netstatus/NetworkGenerationTracker;Lc8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/netstatus/NetworkAvailabilityManager$observe$1;->a:Lnet/blip/android/netstatus/NetworkGenerationTracker;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/netstatus/NetworkAvailabilityManager$observe$1;->b:Lc8;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-object p0, p0, Lnet/blip/android/netstatus/NetworkAvailabilityManager$observe$1;->a:Lnet/blip/android/netstatus/NetworkGenerationTracker;

    .line 12
    .line 13
    iget-object p1, p0, Lnet/blip/android/netstatus/NetworkGenerationTracker;->b:Ljava/lang/Long;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    cmp-long p1, v2, v0

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lnet/blip/android/netstatus/NetworkGenerationTracker;->b:Ljava/lang/Long;

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lnet/blip/android/netstatus/NetworkGenerationTracker;->c:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p1, p0, Lnet/blip/android/netstatus/NetworkGenerationTracker;->d:Ljava/lang/Boolean;

    .line 37
    .line 38
    iget-boolean v0, p0, Lnet/blip/android/netstatus/NetworkGenerationTracker;->a:Z

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    move-object v0, p1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 45
    .line 46
    :goto_1
    iput-object v0, p0, Lnet/blip/android/netstatus/NetworkGenerationTracker;->e:Ljava/lang/Boolean;

    .line 47
    .line 48
    iput-object p1, p0, Lnet/blip/android/netstatus/NetworkGenerationTracker;->f:Ljava/lang/Boolean;

    .line 49
    .line 50
    return-void
.end method

.method public final onBlockedStatusChanged(Landroid/net/Network;Z)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onBlockedStatusChanged(Landroid/net/Network;Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-object p1, p0, Lnet/blip/android/netstatus/NetworkAvailabilityManager$observe$1;->a:Lnet/blip/android/netstatus/NetworkGenerationTracker;

    .line 12
    .line 13
    iget-object v2, p1, Lnet/blip/android/netstatus/NetworkGenerationTracker;->b:Ljava/lang/Long;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    cmp-long v0, v2, v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    :goto_0
    const/4 p1, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iput-object p2, p1, Lnet/blip/android/netstatus/NetworkGenerationTracker;->e:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {p1}, Lnet/blip/android/netstatus/NetworkGenerationTracker;->a()Lnet/blip/android/netstatus/NetworkObservation;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :goto_1
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object p0, p0, Lnet/blip/android/netstatus/NetworkAvailabilityManager$observe$1;->b:Lc8;

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lc8;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const/16 p1, 0xc

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/16 v2, 0x10

    .line 21
    .line 22
    invoke-virtual {p2, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    :goto_0
    iget-object p2, p0, Lnet/blip/android/netstatus/NetworkAvailabilityManager$observe$1;->a:Lnet/blip/android/netstatus/NetworkGenerationTracker;

    .line 34
    .line 35
    iget-object v2, p2, Lnet/blip/android/netstatus/NetworkGenerationTracker;->b:Ljava/lang/Long;

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    cmp-long v0, v2, v0

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    :goto_1
    const/4 p1, 0x0

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p2, Lnet/blip/android/netstatus/NetworkGenerationTracker;->d:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {p2}, Lnet/blip/android/netstatus/NetworkGenerationTracker;->a()Lnet/blip/android/netstatus/NetworkObservation;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    :goto_2
    if-eqz p1, :cond_3

    .line 61
    .line 62
    iget-object p0, p0, Lnet/blip/android/netstatus/NetworkAvailabilityManager$observe$1;->b:Lc8;

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lc8;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    :cond_3
    return-void
.end method

.method public final onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v2, 0x7c

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    new-instance v4, Ljava/util/ArrayList;

    .line 39
    .line 40
    const/16 v5, 0xa

    .line 41
    .line 42
    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_0

    .line 58
    .line 59
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    check-cast v6, Landroid/net/LinkAddress;

    .line 64
    .line 65
    invoke-virtual {v6}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->Q(Ljava/lang/Iterable;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const-string v4, ","

    .line 78
    .line 79
    const/4 v6, 0x0

    .line 80
    invoke-static {v3, p1, v4, v6, v2}, Lkotlin/collections/CollectionsKt;->x(Ljava/util/List;Ljava/lang/StringBuilder;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    new-instance v7, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-eqz v8, :cond_1

    .line 111
    .line 112
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    check-cast v8, Landroid/net/RouteInfo;

    .line 117
    .line 118
    invoke-virtual {v8}, Landroid/net/RouteInfo;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_1
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->Q(Ljava/lang/Iterable;)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-static {v3, p1, v4, v6, v2}, Lkotlin/collections/CollectionsKt;->x(Ljava/util/List;Ljava/lang/StringBuilder;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    new-instance v3, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-static {p2, v5}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    .line 151
    .line 152
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-eqz v5, :cond_2

    .line 161
    .line 162
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    check-cast v5, Ljava/net/InetAddress;

    .line 167
    .line 168
    invoke-virtual {v5}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_2
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->Q(Ljava/lang/Iterable;)Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-static {p2, p1, v4, v6, v2}, Lkotlin/collections/CollectionsKt;->x(Ljava/util/List;Ljava/lang/StringBuilder;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    iget-object p2, p0, Lnet/blip/android/netstatus/NetworkAvailabilityManager$observe$1;->a:Lnet/blip/android/netstatus/NetworkGenerationTracker;

    .line 188
    .line 189
    iget-object v2, p2, Lnet/blip/android/netstatus/NetworkGenerationTracker;->b:Ljava/lang/Long;

    .line 190
    .line 191
    if-nez v2, :cond_3

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 195
    .line 196
    .line 197
    move-result-wide v2

    .line 198
    cmp-long v0, v2, v0

    .line 199
    .line 200
    if-eqz v0, :cond_4

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_4
    iget-object v0, p2, Lnet/blip/android/netstatus/NetworkGenerationTracker;->c:Ljava/lang/String;

    .line 204
    .line 205
    iput-object p1, p2, Lnet/blip/android/netstatus/NetworkGenerationTracker;->c:Ljava/lang/String;

    .line 206
    .line 207
    if-eqz v0, :cond_6

    .line 208
    .line 209
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-eqz p1, :cond_5

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_5
    iget-object p1, p2, Lnet/blip/android/netstatus/NetworkGenerationTracker;->f:Ljava/lang/Boolean;

    .line 217
    .line 218
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 219
    .line 220
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    if-eqz p1, :cond_6

    .line 225
    .line 226
    iget-wide v0, p2, Lnet/blip/android/netstatus/NetworkGenerationTracker;->g:J

    .line 227
    .line 228
    const-wide/16 v2, 0x1

    .line 229
    .line 230
    add-long/2addr v0, v2

    .line 231
    iput-wide v0, p2, Lnet/blip/android/netstatus/NetworkGenerationTracker;->g:J

    .line 232
    .line 233
    new-instance v6, Lnet/blip/android/netstatus/NetworkObservation;

    .line 234
    .line 235
    const/4 p1, 0x1

    .line 236
    invoke-direct {v6, v0, v1, p1}, Lnet/blip/android/netstatus/NetworkObservation;-><init>(JZ)V

    .line 237
    .line 238
    .line 239
    :cond_6
    :goto_3
    if-eqz v6, :cond_7

    .line 240
    .line 241
    iget-object p0, p0, Lnet/blip/android/netstatus/NetworkAvailabilityManager$observe$1;->b:Lc8;

    .line 242
    .line 243
    invoke-virtual {p0, v6}, Lc8;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    :cond_7
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-object p1, p0, Lnet/blip/android/netstatus/NetworkAvailabilityManager$observe$1;->a:Lnet/blip/android/netstatus/NetworkGenerationTracker;

    .line 12
    .line 13
    iget-object v2, p1, Lnet/blip/android/netstatus/NetworkGenerationTracker;->b:Ljava/lang/Long;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    cmp-long v0, v4, v0

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iput-object v3, p1, Lnet/blip/android/netstatus/NetworkGenerationTracker;->b:Ljava/lang/Long;

    .line 29
    .line 30
    iput-object v3, p1, Lnet/blip/android/netstatus/NetworkGenerationTracker;->c:Ljava/lang/String;

    .line 31
    .line 32
    iput-object v3, p1, Lnet/blip/android/netstatus/NetworkGenerationTracker;->d:Ljava/lang/Boolean;

    .line 33
    .line 34
    iput-object v3, p1, Lnet/blip/android/netstatus/NetworkGenerationTracker;->e:Ljava/lang/Boolean;

    .line 35
    .line 36
    iget-object v0, p1, Lnet/blip/android/netstatus/NetworkGenerationTracker;->f:Ljava/lang/Boolean;

    .line 37
    .line 38
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iput-object v1, p1, Lnet/blip/android/netstatus/NetworkGenerationTracker;->f:Ljava/lang/Boolean;

    .line 48
    .line 49
    iget-wide v0, p1, Lnet/blip/android/netstatus/NetworkGenerationTracker;->g:J

    .line 50
    .line 51
    const-wide/16 v2, 0x1

    .line 52
    .line 53
    add-long/2addr v0, v2

    .line 54
    iput-wide v0, p1, Lnet/blip/android/netstatus/NetworkGenerationTracker;->g:J

    .line 55
    .line 56
    new-instance v3, Lnet/blip/android/netstatus/NetworkObservation;

    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    invoke-direct {v3, v0, v1, p1}, Lnet/blip/android/netstatus/NetworkObservation;-><init>(JZ)V

    .line 60
    .line 61
    .line 62
    :goto_0
    if-eqz v3, :cond_3

    .line 63
    .line 64
    iget-object p0, p0, Lnet/blip/android/netstatus/NetworkAvailabilityManager$observe$1;->b:Lc8;

    .line 65
    .line 66
    invoke-virtual {p0, v3}, Lc8;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    :cond_3
    return-void
.end method
