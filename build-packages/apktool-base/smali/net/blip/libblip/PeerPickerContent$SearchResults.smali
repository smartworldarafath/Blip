.class public final Lnet/blip/libblip/PeerPickerContent$SearchResults;
.super Lnet/blip/libblip/PeerPickerContent;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/PeerPickerContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchResults"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lnet/blip/libblip/frontend/Search$Status;

.field public final d:Z


# direct methods
.method public constructor <init>(Lnet/blip/libblip/frontend/Search;Lnet/blip/libblip/frontend/Users;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lnet/blip/libblip/frontend/Search;->o:Ljava/util/List;

    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lnet/blip/libblip/PeerId;

    .line 26
    .line 27
    invoke-static {p2, v2}, Lnet/blip/libblip/Users_DerivedKt;->a(Lnet/blip/libblip/frontend/Users;Lnet/blip/libblip/PeerId;)Lnet/blip/libblip/Peer;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p1, Lnet/blip/libblip/frontend/Search;->p:Ljava/util/List;

    .line 38
    .line 39
    new-instance v2, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Lnet/blip/libblip/PeerId;

    .line 59
    .line 60
    invoke-static {p2, v3}, Lnet/blip/libblip/Users_DerivedKt;->a(Lnet/blip/libblip/frontend/Users;Lnet/blip/libblip/PeerId;)Lnet/blip/libblip/Peer;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    iget-object p1, p1, Lnet/blip/libblip/frontend/Search;->n:Lnet/blip/libblip/frontend/Search$Status;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v1, p0, Lnet/blip/libblip/PeerPickerContent$SearchResults;->a:Ljava/util/ArrayList;

    .line 79
    .line 80
    iput-object v2, p0, Lnet/blip/libblip/PeerPickerContent$SearchResults;->b:Ljava/util/ArrayList;

    .line 81
    .line 82
    iput-object p1, p0, Lnet/blip/libblip/PeerPickerContent$SearchResults;->c:Lnet/blip/libblip/frontend/Search$Status;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    const/4 p1, 0x1

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    const/4 p1, 0x0

    .line 99
    :goto_2
    iput-boolean p1, p0, Lnet/blip/libblip/PeerPickerContent$SearchResults;->d:Z

    .line 100
    .line 101
    return-void
.end method
