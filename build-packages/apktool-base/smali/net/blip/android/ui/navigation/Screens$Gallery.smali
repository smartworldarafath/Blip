.class public abstract Lnet/blip/android/ui/navigation/Screens$Gallery;
.super Lnet/blip/android/ui/navigation/Screens;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/android/ui/navigation/Screens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Gallery"
.end annotation


# direct methods
.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v0, Lkotlinx/serialization/json/Json;->d:Lkotlinx/serialization/json/Json$Default;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroid/net/Uri;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    .line 42
    .line 43
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    .line 44
    .line 45
    invoke-direct {p0, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Lkotlinx/serialization/json/internal/JsonToStringWriter;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    sget-object v3, Lkotlinx/serialization/json/internal/CharArrayPool;->c:Lkotlinx/serialization/json/internal/CharArrayPool;

    .line 54
    .line 55
    monitor-enter v3

    .line 56
    :try_start_0
    iget-object v4, v3, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->a:Lkotlin/collections/ArrayDeque;

    .line 57
    .line 58
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    const/4 v6, 0x0

    .line 63
    if-eqz v5, :cond_1

    .line 64
    .line 65
    move-object v4, v6

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    :goto_1
    check-cast v4, [C

    .line 72
    .line 73
    if-eqz v4, :cond_2

    .line 74
    .line 75
    iget v5, v3, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->b:I

    .line 76
    .line 77
    array-length v6, v4

    .line 78
    sub-int/2addr v5, v6

    .line 79
    iput v5, v3, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    move-object v6, v4

    .line 82
    goto :goto_2

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_3

    .line 85
    :cond_2
    :goto_2
    monitor-exit v3

    .line 86
    if-nez v6, :cond_3

    .line 87
    .line 88
    const/16 v3, 0x80

    .line 89
    .line 90
    new-array v6, v3, [C

    .line 91
    .line 92
    :cond_3
    iput-object v6, v2, Lkotlinx/serialization/json/internal/JsonToStringWriter;->a:[C

    .line 93
    .line 94
    :try_start_1
    new-instance v3, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    .line 95
    .line 96
    sget-object v4, Lkotlinx/serialization/json/internal/WriteMode;->l:Lkotlinx/serialization/json/internal/WriteMode;

    .line 97
    .line 98
    sget-object v5, Lkotlinx/serialization/json/internal/WriteMode;->q:Lkotlin/enums/EnumEntries;

    .line 99
    .line 100
    check-cast v5, Lkotlin/collections/AbstractCollection;

    .line 101
    .line 102
    invoke-virtual {v5}, Lkotlin/collections/AbstractCollection;->b()I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    new-array v5, v5, [Lkotlinx/serialization/json/JsonEncoder;

    .line 107
    .line 108
    new-instance v6, Lkotlinx/serialization/json/internal/Composer;

    .line 109
    .line 110
    invoke-direct {v6, v2}, Lkotlinx/serialization/json/internal/Composer;-><init>(Lkotlinx/serialization/json/internal/JsonToStringWriter;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {v3, v6, v0, v4, v5}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;-><init>(Lkotlinx/serialization/json/internal/Composer;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonEncoder;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, p0, v1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->b()V

    .line 124
    .line 125
    .line 126
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    const-string v0, "gallery/"

    .line 131
    .line 132
    invoke-static {v0, p0}, Ljb;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    return-object p0

    .line 137
    :catchall_1
    move-exception p0

    .line 138
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->b()V

    .line 139
    .line 140
    .line 141
    throw p0

    .line 142
    :goto_3
    monitor-exit v3

    .line 143
    throw p0
.end method
