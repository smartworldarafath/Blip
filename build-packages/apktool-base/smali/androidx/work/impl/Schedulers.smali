.class public abstract Landroidx/work/impl/Schedulers;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "Schedulers"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/Schedulers;->a:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Landroidx/work/impl/model/WorkSpecDao;Landroidx/work/SystemClock;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Landroidx/work/impl/model/WorkSpec;

    .line 29
    .line 30
    iget-object p2, p2, Landroidx/work/impl/model/WorkSpec;->a:Ljava/lang/String;

    .line 31
    .line 32
    move-object v2, p0

    .line 33
    check-cast v2, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 34
    .line 35
    invoke-virtual {v2, v0, v1, p2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->c(JLjava/lang/String;)I

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public static b(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V
    .locals 8

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->v()Landroidx/work/impl/model/WorkSpecDao;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->b()V

    .line 16
    .line 17
    .line 18
    :try_start_0
    move-object v1, v0

    .line 19
    check-cast v1, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 22
    .line 23
    new-instance v2, Lii;

    .line 24
    .line 25
    const/16 v3, 0x10

    .line 26
    .line 27
    invoke-direct {v2, v3}, Lii;-><init>(I)V

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x1

    .line 32
    invoke-static {v1, v4, v3, v2}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/util/List;

    .line 37
    .line 38
    iget-object v2, p0, Landroidx/work/Configuration;->d:Landroidx/work/SystemClock;

    .line 39
    .line 40
    invoke-static {v0, v2, v1}, Landroidx/work/impl/Schedulers;->a(Landroidx/work/impl/model/WorkSpecDao;Landroidx/work/SystemClock;Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    iget v2, p0, Landroidx/work/Configuration;->k:I

    .line 44
    .line 45
    move-object v5, v0

    .line 46
    check-cast v5, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 47
    .line 48
    iget-object v5, v5, Landroidx/work/impl/model/WorkSpecDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 49
    .line 50
    new-instance v6, Lr0;

    .line 51
    .line 52
    const/16 v7, 0x9

    .line 53
    .line 54
    invoke-direct {v6, v2, v7}, Lr0;-><init>(II)V

    .line 55
    .line 56
    .line 57
    invoke-static {v5, v4, v3, v6}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/util/List;

    .line 62
    .line 63
    iget-object p0, p0, Landroidx/work/Configuration;->d:Landroidx/work/SystemClock;

    .line 64
    .line 65
    invoke-static {v0, p0, v2}, Landroidx/work/impl/Schedulers;->a(Landroidx/work/impl/model/WorkSpecDao;Landroidx/work/SystemClock;Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    .line 70
    .line 71
    check-cast v0, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 72
    .line 73
    iget-object p0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 74
    .line 75
    new-instance v0, Lii;

    .line 76
    .line 77
    const/16 v1, 0x13

    .line 78
    .line 79
    invoke-direct {v0, v1}, Lii;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-static {p0, v4, v3, v0}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    check-cast p0, Ljava/util/List;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->l()V

    .line 92
    .line 93
    .line 94
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-lez p1, :cond_2

    .line 99
    .line 100
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    new-array p1, p1, [Landroidx/work/impl/model/WorkSpec;

    .line 105
    .line 106
    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, [Landroidx/work/impl/model/WorkSpec;

    .line 111
    .line 112
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_2

    .line 121
    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Landroidx/work/impl/Scheduler;

    .line 127
    .line 128
    invoke-interface {v1}, Landroidx/work/impl/Scheduler;->c()Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_1

    .line 133
    .line 134
    invoke-interface {v1, p1}, Landroidx/work/impl/Scheduler;->a([Landroidx/work/impl/model/WorkSpec;)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-lez p1, :cond_4

    .line 143
    .line 144
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    new-array p1, p1, [Landroidx/work/impl/model/WorkSpec;

    .line 149
    .line 150
    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    check-cast p0, [Landroidx/work/impl/model/WorkSpec;

    .line 155
    .line 156
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    if-eqz p2, :cond_4

    .line 165
    .line 166
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    check-cast p2, Landroidx/work/impl/Scheduler;

    .line 171
    .line 172
    invoke-interface {p2}, Landroidx/work/impl/Scheduler;->c()Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-nez v0, :cond_3

    .line 177
    .line 178
    invoke-interface {p2, p0}, Landroidx/work/impl/Scheduler;->a([Landroidx/work/impl/model/WorkSpec;)V

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :catchall_0
    move-exception p0

    .line 183
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->l()V

    .line 184
    .line 185
    .line 186
    throw p0

    .line 187
    :cond_4
    :goto_2
    return-void
.end method
