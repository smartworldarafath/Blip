.class final Lio/ktor/util/CaseInsensitiveMap$ValueCollection;
.super Lkotlin/collections/AbstractMutableCollection;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/util/CaseInsensitiveMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ValueCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractMutableCollection<",
        "TValue;>;"
    }
.end annotation


# instance fields
.field public final synthetic j:Lio/ktor/util/CaseInsensitiveMap;


# direct methods
.method public constructor <init>(Lio/ktor/util/CaseInsensitiveMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/ktor/util/CaseInsensitiveMap$ValueCollection;->j:Lio/ktor/util/CaseInsensitiveMap;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 5
    .line 6
    const-string p1, "CaseInsensitiveMap.values does not support add"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public final b()I
    .locals 0

    .line 1
    iget-object p0, p0, Lio/ktor/util/CaseInsensitiveMap$ValueCollection;->j:Lio/ktor/util/CaseInsensitiveMap;

    .line 2
    .line 3
    iget p0, p0, Lio/ktor/util/CaseInsensitiveMap;->l:I

    .line 4
    .line 5
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lio/ktor/util/CaseInsensitiveMap$ValueCollection$iterator$1;

    .line 2
    .line 3
    iget-object p0, p0, Lio/ktor/util/CaseInsensitiveMap$ValueCollection;->j:Lio/ktor/util/CaseInsensitiveMap;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lio/ktor/util/CaseInsensitiveMap$ValueCollection$iterator$1;-><init>(Lio/ktor/util/CaseInsensitiveMap;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
