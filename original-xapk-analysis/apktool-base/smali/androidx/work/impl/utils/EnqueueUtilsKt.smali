.class public abstract Landroidx/work/impl/utils/EnqueueUtilsKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;Landroidx/work/impl/WorkContinuationImpl;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    filled-new-array {p2}, [Landroidx/work/impl/WorkContinuationImpl;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->E([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const/4 v0, 0x0

    .line 16
    move v1, v0

    .line 17
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_4

    .line 22
    .line 23
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->L(Ljava/util/List;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroidx/work/impl/WorkContinuationImpl;

    .line 28
    .line 29
    iget-object v2, v2, Landroidx/work/impl/WorkContinuationImpl;->c:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    move v3, v0

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    move v3, v0

    .line 44
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Landroidx/work/WorkRequest;

    .line 55
    .line 56
    iget-object v4, v4, Landroidx/work/WorkRequest;->b:Landroidx/work/impl/model/WorkSpec;

    .line 57
    .line 58
    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->j:Landroidx/work/Constraints;

    .line 59
    .line 60
    iget-object v4, v4, Landroidx/work/Constraints;->i:Ljava/util/Set;

    .line 61
    .line 62
    check-cast v4, Ljava/util/Collection;

    .line 63
    .line 64
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_1

    .line 69
    .line 70
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    if-ltz v3, :cond_2

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 76
    .line 77
    const-string p1, "Count overflow has happened."

    .line 78
    .line 79
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_3
    :goto_2
    add-int/2addr v1, v3

    .line 84
    goto :goto_0

    .line 85
    :cond_4
    if-nez v1, :cond_5

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_5
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->v()Landroidx/work/impl/model/WorkSpecDao;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    check-cast p0, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 93
    .line 94
    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 95
    .line 96
    new-instance p2, Lii;

    .line 97
    .line 98
    const/16 v2, 0x11

    .line 99
    .line 100
    invoke-direct {p2, v2}, Lii;-><init>(I)V

    .line 101
    .line 102
    .line 103
    const/4 v2, 0x1

    .line 104
    invoke-static {p0, v2, v0, p2}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    check-cast p0, Ljava/lang/Number;

    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    iget p1, p1, Landroidx/work/Configuration;->j:I

    .line 115
    .line 116
    add-int p2, p0, v1

    .line 117
    .line 118
    if-gt p2, p1, :cond_6

    .line 119
    .line 120
    :goto_3
    return-void

    .line 121
    :cond_6
    const-string p2, ";\nalready enqueued count: "

    .line 122
    .line 123
    const-string v0, ";\ncurrent enqueue operation count: "

    .line 124
    .line 125
    const-string v2, "Too many workers with contentUriTriggers are enqueued:\ncontentUriTrigger workers limit: "

    .line 126
    .line 127
    invoke-static {v2, p1, p2, p0, v0}, Ljb;->k(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    const-string p1, ".\nTo address this issue you can: \n1. enqueue less workers or batch some of workers with content uri triggers together;\n2. increase limit via Configuration.Builder.setContentUriTriggerWorkersLimit;\nPlease beware that workers with content uri triggers immediately occupy slots in JobScheduler so no updates to content uris are missed."

    .line 132
    .line 133
    invoke-static {p0, v1, p1}, Ljb;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method
