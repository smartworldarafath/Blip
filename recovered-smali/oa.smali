.class public final synthetic Loa;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/lifecycle/LifecycleRegistry;

.field public final synthetic l:Landroidx/lifecycle/LifecycleOwner;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/LifecycleRegistry;Landroidx/lifecycle/LifecycleOwner;I)V
    .locals 0

    .line 1
    iput p3, p0, Loa;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Loa;->k:Landroidx/lifecycle/LifecycleRegistry;

    .line 4
    .line 5
    iput-object p2, p0, Loa;->l:Landroidx/lifecycle/LifecycleOwner;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Loa;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x2

    .line 7
    iget-object v4, p0, Loa;->l:Landroidx/lifecycle/LifecycleOwner;

    .line 8
    .line 9
    iget-object p0, p0, Loa;->k:Landroidx/lifecycle/LifecycleRegistry;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    check-cast p1, Ljava/util/Map$Entry;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroidx/lifecycle/LifecycleObserver;

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 31
    .line 32
    :goto_0
    iget-object v6, p1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 33
    .line 34
    iget-object v7, p0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 35
    .line 36
    iget-object v8, p0, Landroidx/lifecycle/LifecycleRegistry;->h:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v6, v7}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-gez v6, :cond_4

    .line 43
    .line 44
    iget-boolean v6, p0, Landroidx/lifecycle/LifecycleRegistry;->g:Z

    .line 45
    .line 46
    if-nez v6, :cond_4

    .line 47
    .line 48
    iget-object v6, p0, Landroidx/lifecycle/LifecycleRegistry;->c:Landroidx/lifecycle/FastSafeIterableMap;

    .line 49
    .line 50
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    iget-object v6, v6, Landroidx/lifecycle/FastSafeIterableMap;->a:Landroidx/collection/MutableScatterMap;

    .line 57
    .line 58
    invoke-virtual {v6, v0}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_4

    .line 63
    .line 64
    iget-object v6, p1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 65
    .line 66
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    sget-object v6, Landroidx/lifecycle/Lifecycle$Event;->Companion:Landroidx/lifecycle/Lifecycle$Event$Companion;

    .line 70
    .line 71
    iget-object v7, p1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 72
    .line 73
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    const/4 v7, 0x1

    .line 84
    if-eq v6, v7, :cond_2

    .line 85
    .line 86
    if-eq v6, v3, :cond_1

    .line 87
    .line 88
    if-eq v6, v2, :cond_0

    .line 89
    .line 90
    move-object v6, v5

    .line 91
    goto :goto_1

    .line 92
    :cond_0
    sget-object v6, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    sget-object v6, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    sget-object v6, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 99
    .line 100
    :goto_1
    if-eqz v6, :cond_3

    .line 101
    .line 102
    invoke-virtual {p1, v4, v6}, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/AbstractList;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    iget-object p0, p1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 110
    .line 111
    const-string p1, "no event up from "

    .line 112
    .line 113
    invoke-static {p0, p1}, Lk8;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    move-object v1, v5

    .line 117
    :cond_4
    return-object v1

    .line 118
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Landroidx/lifecycle/LifecycleObserver;

    .line 126
    .line 127
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 132
    .line 133
    :goto_2
    iget-object v6, p1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 134
    .line 135
    iget-object v7, p0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 136
    .line 137
    iget-object v8, p0, Landroidx/lifecycle/LifecycleRegistry;->h:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v6, v7}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-lez v6, :cond_9

    .line 144
    .line 145
    iget-boolean v6, p0, Landroidx/lifecycle/LifecycleRegistry;->g:Z

    .line 146
    .line 147
    if-nez v6, :cond_9

    .line 148
    .line 149
    iget-object v6, p0, Landroidx/lifecycle/LifecycleRegistry;->c:Landroidx/lifecycle/FastSafeIterableMap;

    .line 150
    .line 151
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    iget-object v6, v6, Landroidx/lifecycle/FastSafeIterableMap;->a:Landroidx/collection/MutableScatterMap;

    .line 158
    .line 159
    invoke-virtual {v6, v0}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    if-eqz v6, :cond_9

    .line 164
    .line 165
    sget-object v6, Landroidx/lifecycle/Lifecycle$Event;->Companion:Landroidx/lifecycle/Lifecycle$Event$Companion;

    .line 166
    .line 167
    iget-object v7, p1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 168
    .line 169
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    if-eq v6, v3, :cond_7

    .line 180
    .line 181
    if-eq v6, v2, :cond_6

    .line 182
    .line 183
    const/4 v7, 0x4

    .line 184
    if-eq v6, v7, :cond_5

    .line 185
    .line 186
    move-object v6, v5

    .line 187
    goto :goto_3

    .line 188
    :cond_5
    sget-object v6, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_6
    sget-object v6, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_7
    sget-object v6, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 195
    .line 196
    :goto_3
    if-eqz v6, :cond_8

    .line 197
    .line 198
    invoke-virtual {v6}, Landroidx/lifecycle/Lifecycle$Event;->a()Landroidx/lifecycle/Lifecycle$State;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v4, v6}, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 206
    .line 207
    .line 208
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/AbstractList;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_8
    iget-object p0, p1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 213
    .line 214
    const-string p1, "no event down from "

    .line 215
    .line 216
    invoke-static {p0, p1}, Lk8;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    move-object v1, v5

    .line 220
    :cond_9
    return-object v1

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
