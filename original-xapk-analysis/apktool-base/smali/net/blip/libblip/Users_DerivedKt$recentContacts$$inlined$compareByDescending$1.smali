.class public final Lnet/blip/libblip/Users_DerivedKt$recentContacts$$inlined$compareByDescending$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation


# instance fields
.field public final synthetic j:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/libblip/Users_DerivedKt$recentContacts$$inlined$compareByDescending$1;->j:Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p2, Lnet/blip/libblip/User;

    .line 2
    .line 3
    iget-object p2, p2, Lnet/blip/libblip/User;->m:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/blip/libblip/Users_DerivedKt$recentContacts$$inlined$compareByDescending$1;->j:Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Ljava/lang/Comparable;

    .line 12
    .line 13
    check-cast p1, Lnet/blip/libblip/User;

    .line 14
    .line 15
    iget-object p1, p1, Lnet/blip/libblip/User;->m:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/Comparable;

    .line 22
    .line 23
    invoke-static {p2, p0}, Lkotlin/comparisons/ComparisonsKt;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method
