.class public final Lnet/blip/libblip/Users_DerivedKt$recentContacts$$inlined$thenBy$1;
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
.field public final synthetic j:Lnet/blip/libblip/Users_DerivedKt$recentContacts$$inlined$compareByDescending$1;


# direct methods
.method public constructor <init>(Lnet/blip/libblip/Users_DerivedKt$recentContacts$$inlined$compareByDescending$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/libblip/Users_DerivedKt$recentContacts$$inlined$thenBy$1;->j:Lnet/blip/libblip/Users_DerivedKt$recentContacts$$inlined$compareByDescending$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/blip/libblip/Users_DerivedKt$recentContacts$$inlined$thenBy$1;->j:Lnet/blip/libblip/Users_DerivedKt$recentContacts$$inlined$compareByDescending$1;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lnet/blip/libblip/Users_DerivedKt$recentContacts$$inlined$compareByDescending$1;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    check-cast p1, Lnet/blip/libblip/User;

    .line 11
    .line 12
    invoke-static {p1}, Lnet/blip/libblip/User_DerivedKt;->a(Lnet/blip/libblip/User;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p2, Lnet/blip/libblip/User;

    .line 17
    .line 18
    invoke-static {p2}, Lnet/blip/libblip/User_DerivedKt;->a(Lnet/blip/libblip/User;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method
