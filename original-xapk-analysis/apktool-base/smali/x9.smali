.class public final synthetic Lx9;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lx9;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 7
    iput p1, p0, Lx9;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 9

    .line 1
    iget p0, p0, Lx9;->j:I

    .line 2
    .line 3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-static {p0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :pswitch_0
    new-instance p0, Lokhttp3/OkHttpClient;

    .line 18
    .line 19
    invoke-direct {p0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;-><init>(Lokhttp3/OkHttpClient;)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :pswitch_1
    new-array p0, v1, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 29
    .line 30
    const-string v4, "kotlin.Unit"

    .line 31
    .line 32
    invoke-static {v4}, Lkotlin/text/StringsKt;->t(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    sget-object v0, Lkotlinx/serialization/descriptors/StructureKind$CLASS;->a:Lkotlinx/serialization/descriptors/StructureKind$CLASS;

    .line 39
    .line 40
    sget-object v5, Lkotlinx/serialization/descriptors/StructureKind$OBJECT;->a:Lkotlinx/serialization/descriptors/StructureKind$OBJECT;

    .line 41
    .line 42
    if-eq v5, v0, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v1, 0x1

    .line 46
    :goto_0
    if-nez v1, :cond_1

    .line 47
    .line 48
    new-instance v8, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    .line 49
    .line 50
    invoke-direct {v8, v4}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v3, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 54
    .line 55
    iget-object v0, v8, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->b:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->v([Ljava/lang/Object;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-direct/range {v3 .. v8}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;-><init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;ILjava/util/List;Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;)V

    .line 66
    .line 67
    .line 68
    move-object v2, v3

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const-string p0, "For StructureKind.CLASS please use \'buildClassSerialDescriptor\' instead"

    .line 71
    .line 72
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const-string p0, "Blank serial names are prohibited"

    .line 77
    .line 78
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :goto_1
    return-object v2

    .line 82
    :pswitch_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 83
    .line 84
    invoke-static {p0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :pswitch_3
    sget-object p0, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    .line 90
    .line 91
    invoke-static {p0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :pswitch_4
    sget-object p0, Lcoil3/network/ConcurrentRequestStrategy;->a:Lcoil3/network/ConcurrentRequestStrategy;

    .line 97
    .line 98
    return-object p0

    .line 99
    :pswitch_5
    sget-object p0, Lcoil3/network/CacheStrategy;->a:Lcoil3/network/internal/DefaultCacheStrategy;

    .line 100
    .line 101
    return-object p0

    .line 102
    :pswitch_6
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->j:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 103
    .line 104
    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {p0, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->b(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 109
    .line 110
    .line 111
    return-object p0

    .line 112
    :pswitch_7
    sget-object p0, Lnet/blip/android/ui/navigation/NavigationRootKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 113
    .line 114
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 115
    .line 116
    const-string v0, "No LocalNavController provided"

    .line 117
    .line 118
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :pswitch_8
    new-instance p0, Landroidx/lifecycle/SavedStateViewModelFactory;

    .line 123
    .line 124
    invoke-direct {p0}, Landroidx/lifecycle/SavedStateViewModelFactory;-><init>()V

    .line 125
    .line 126
    .line 127
    return-object p0

    .line 128
    :pswitch_9
    sget p0, Lbsarchive/Metadata$Companion$ADAPTER$1;->x:I

    .line 129
    .line 130
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 131
    .line 132
    invoke-static {p0, p0}, Lcom/squareup/wire/ProtoAdapter$Companion;->a(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;)Lcom/squareup/wire/MapProtoAdapter;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    return-object p0

    .line 137
    :pswitch_a
    sget p0, Lbsarchive/Metadata$Companion$ADAPTER$1;->x:I

    .line 138
    .line 139
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 140
    .line 141
    sget-object v0, Lbsarchive/AnyItem;->q:Lbsarchive/AnyItem$Companion$ADAPTER$1;

    .line 142
    .line 143
    invoke-static {p0, v0}, Lcom/squareup/wire/ProtoAdapter$Companion;->a(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;)Lcom/squareup/wire/MapProtoAdapter;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    return-object p0

    .line 148
    :pswitch_b
    sget-object p0, Landroidx/savedstate/compose/LocalSavedStateRegistryOwnerKt;->a:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 149
    .line 150
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 151
    .line 152
    const-string v0, "CompositionLocal LocalSavedStateRegistryOwner not present"

    .line 153
    .line 154
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p0

    .line 158
    :pswitch_c
    sget-object p0, Landroidx/compose/runtime/retain/LocalRetainedValuesStoreKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 159
    .line 160
    sget-object p0, Landroidx/compose/runtime/retain/ForgetfulRetainedValuesStore;->a:Landroidx/compose/runtime/retain/ForgetfulRetainedValuesStore;

    .line 161
    .line 162
    return-object p0

    .line 163
    :pswitch_d
    sget-object p0, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 164
    .line 165
    return-object v2

    .line 166
    :pswitch_e
    sget-object p0, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 167
    .line 168
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 169
    .line 170
    const-string v0, "CompositionLocal LocalLifecycleOwner not present"

    .line 171
    .line 172
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p0

    .line 176
    :pswitch_f
    sget-object p0, Lcoil3/compose/LocalAsyncImageModelEqualityDelegateKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 177
    .line 178
    sget-object p0, Lcoil3/compose/AsyncImageModelEqualityDelegate;->a:Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;

    .line 179
    .line 180
    return-object p0

    .line 181
    :pswitch_10
    sget-object p0, Landroidx/activity/compose/LocalActivityResultRegistryOwner;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 182
    .line 183
    return-object v2

    .line 184
    :pswitch_11
    sget-object p0, Lnet/blip/shared/LightDarkThemeKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 185
    .line 186
    sget-object p0, Lnet/blip/shared/LightDarkTheme;->j:Lnet/blip/shared/LightDarkTheme;

    .line 187
    .line 188
    return-object p0

    .line 189
    :pswitch_12
    sget-object p0, Landroidx/compose/foundation/lazy/LazyListStateKt;->a:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 190
    .line 191
    new-instance p0, Landroidx/compose/foundation/lazy/LazyListState;

    .line 192
    .line 193
    invoke-direct {p0, v1, v1}, Landroidx/compose/foundation/lazy/LazyListState;-><init>(II)V

    .line 194
    .line 195
    .line 196
    return-object p0

    .line 197
    :pswitch_13
    sget-object p0, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->a:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 198
    .line 199
    new-instance p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 200
    .line 201
    invoke-direct {p0, v1, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;-><init>(II)V

    .line 202
    .line 203
    .line 204
    return-object p0

    .line 205
    :pswitch_14
    new-instance p0, Landroidx/compose/ui/node/LayoutNode;

    .line 206
    .line 207
    const/4 v0, 0x3

    .line 208
    invoke-direct {p0, v0}, Landroidx/compose/ui/node/LayoutNode;-><init>(I)V

    .line 209
    .line 210
    .line 211
    return-object p0

    .line 212
    :pswitch_15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    return-object p0

    .line 221
    :pswitch_16
    sget-object p0, Lkotlinx/serialization/json/JsonElementSerializer;->a:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 222
    .line 223
    sget-object p0, Lkotlinx/serialization/json/JsonArraySerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 224
    .line 225
    return-object p0

    .line 226
    :pswitch_17
    sget-object p0, Lkotlinx/serialization/json/JsonElementSerializer;->a:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 227
    .line 228
    sget-object p0, Lkotlinx/serialization/json/JsonObjectSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 229
    .line 230
    return-object p0

    .line 231
    :pswitch_18
    sget-object p0, Lkotlinx/serialization/json/JsonElementSerializer;->a:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 232
    .line 233
    sget-object p0, Lkotlinx/serialization/json/JsonNullSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 234
    .line 235
    return-object p0

    .line 236
    :pswitch_19
    sget-object p0, Lkotlinx/serialization/json/JsonElementSerializer;->a:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 237
    .line 238
    sget-object p0, Lkotlinx/serialization/json/JsonPrimitiveSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 239
    .line 240
    return-object p0

    .line 241
    :pswitch_1a
    return-object v0

    .line 242
    :pswitch_1b
    sget-object p0, Landroidx/compose/material/InteractiveComponentSizeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 243
    .line 244
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 245
    .line 246
    return-object p0

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
