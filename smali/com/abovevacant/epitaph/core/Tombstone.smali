.class public final Lcom/abovevacant/epitaph/core/Tombstone;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lcom/abovevacant/epitaph/core/Signal;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/Map;

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>(IILjava/util/ArrayList;Lcom/abovevacant/epitaph/core/Signal;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/Tombstone;->a:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/abovevacant/epitaph/core/Tombstone;->b:Lcom/abovevacant/epitaph/core/Signal;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/abovevacant/epitaph/core/Tombstone;->c:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    invoke-static {p8}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/Tombstone;->d:Ljava/util/Map;

    .line 25
    .line 26
    invoke-static {p9}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    invoke-static {p10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/Tombstone;->e:Ljava/util/List;

    .line 34
    .line 35
    invoke-static {p11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    invoke-static {p12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    return-void
.end method
