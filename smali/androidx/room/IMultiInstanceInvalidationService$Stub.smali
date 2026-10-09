.class public abstract Landroidx/room/IMultiInstanceInvalidationService$Stub;
.super Landroid/os/Binder;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/room/IMultiInstanceInvalidationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/IMultiInstanceInvalidationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    .line 1
    sget-object v0, Landroidx/room/IMultiInstanceInvalidationService;->c:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    .line 6
    const v2, 0xffffff

    .line 7
    .line 8
    .line 9
    if-gt p1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v2, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-ne p1, v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    if-eq p1, v1, :cond_6

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    if-eq p1, v2, :cond_3

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    if-eq p1, v0, :cond_2

    .line 31
    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p0, Landroidx/room/MultiInstanceInvalidationService$binder$1;

    .line 46
    .line 47
    invoke-virtual {p0, p1, p2}, Landroidx/room/MultiInstanceInvalidationService$binder$1;->i(I[Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return v1

    .line 51
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-nez p1, :cond_4

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    sget-object p4, Landroidx/room/IMultiInstanceInvalidationCallback;->b:Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 61
    .line 62
    .line 63
    move-result-object p4

    .line 64
    if-eqz p4, :cond_5

    .line 65
    .line 66
    instance-of v0, p4, Landroidx/room/IMultiInstanceInvalidationCallback;

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    move-object v0, p4

    .line 71
    check-cast v0, Landroidx/room/IMultiInstanceInvalidationCallback;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_5
    new-instance v0, Landroidx/room/IMultiInstanceInvalidationCallback$Stub$Proxy;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object p1, v0, Landroidx/room/IMultiInstanceInvalidationCallback$Stub$Proxy;->d:Landroid/os/IBinder;

    .line 80
    .line 81
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    check-cast p0, Landroidx/room/MultiInstanceInvalidationService$binder$1;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService$binder$1;->d:Landroidx/room/MultiInstanceInvalidationService;

    .line 91
    .line 92
    iget-object p2, p0, Landroidx/room/MultiInstanceInvalidationService;->l:Landroidx/room/MultiInstanceInvalidationService$callbackList$1;

    .line 93
    .line 94
    monitor-enter p2

    .line 95
    :try_start_0
    iget-object p4, p0, Landroidx/room/MultiInstanceInvalidationService;->l:Landroidx/room/MultiInstanceInvalidationService$callbackList$1;

    .line 96
    .line 97
    invoke-virtual {p4, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService;->k:Ljava/util/LinkedHashMap;

    .line 101
    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .line 112
    monitor-exit p2

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    .line 115
    .line 116
    return v1

    .line 117
    :catchall_0
    move-exception p0

    .line 118
    monitor-exit p2

    .line 119
    throw p0

    .line 120
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-nez p1, :cond_7

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_7
    sget-object p4, Landroidx/room/IMultiInstanceInvalidationCallback;->b:Ljava/lang/String;

    .line 128
    .line 129
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 130
    .line 131
    .line 132
    move-result-object p4

    .line 133
    if-eqz p4, :cond_8

    .line 134
    .line 135
    instance-of v0, p4, Landroidx/room/IMultiInstanceInvalidationCallback;

    .line 136
    .line 137
    if-eqz v0, :cond_8

    .line 138
    .line 139
    move-object v0, p4

    .line 140
    check-cast v0, Landroidx/room/IMultiInstanceInvalidationCallback;

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_8
    new-instance v0, Landroidx/room/IMultiInstanceInvalidationCallback$Stub$Proxy;

    .line 144
    .line 145
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 146
    .line 147
    .line 148
    iput-object p1, v0, Landroidx/room/IMultiInstanceInvalidationCallback$Stub$Proxy;->d:Landroid/os/IBinder;

    .line 149
    .line 150
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p0, Landroidx/room/MultiInstanceInvalidationService$binder$1;

    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    const/4 p2, 0x0

    .line 160
    if-nez p1, :cond_9

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_9
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService$binder$1;->d:Landroidx/room/MultiInstanceInvalidationService;

    .line 164
    .line 165
    iget-object p4, p0, Landroidx/room/MultiInstanceInvalidationService;->l:Landroidx/room/MultiInstanceInvalidationService$callbackList$1;

    .line 166
    .line 167
    monitor-enter p4

    .line 168
    :try_start_1
    iget v2, p0, Landroidx/room/MultiInstanceInvalidationService;->j:I

    .line 169
    .line 170
    add-int/2addr v2, v1

    .line 171
    iput v2, p0, Landroidx/room/MultiInstanceInvalidationService;->j:I

    .line 172
    .line 173
    iget-object v3, p0, Landroidx/room/MultiInstanceInvalidationService;->l:Landroidx/room/MultiInstanceInvalidationService$callbackList$1;

    .line 174
    .line 175
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v3, v0, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_a

    .line 184
    .line 185
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService;->k:Ljava/util/LinkedHashMap;

    .line 190
    .line 191
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move p2, v2

    .line 195
    goto :goto_2

    .line 196
    :catchall_1
    move-exception p0

    .line 197
    goto :goto_4

    .line 198
    :cond_a
    iget p1, p0, Landroidx/room/MultiInstanceInvalidationService;->j:I

    .line 199
    .line 200
    add-int/lit8 p1, p1, -0x1

    .line 201
    .line 202
    iput p1, p0, Landroidx/room/MultiInstanceInvalidationService;->j:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 203
    .line 204
    :goto_2
    monitor-exit p4

    .line 205
    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    .line 210
    .line 211
    return v1

    .line 212
    :goto_4
    monitor-exit p4

    .line 213
    throw p0
.end method
