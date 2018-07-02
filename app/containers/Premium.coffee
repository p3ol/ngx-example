import { Component } from "@angular/core"
import { Router } from "@angular/router"

Component(
    selector: "#premium"
    template: """
        <div class="page premium">
            <div class="container">
                <header (onLogin)="onLogin()"></header>

                <h1>Premium post</h1>
                <p>This is a premium post (with a paywall), it contains exactly 10 paragraphs of lorem ipsum</p>
                <div class="articleBody">
                    <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit elit a mollis commodo. Aliquam erat volutpat. Maecenas quis neque quis odio tincidunt varius a quis sapien. Fusce nec pretium erat. Pellentesque euismod libero sit amet bibendum interdum. Quisque quis libero ut nisi tempor egestas eu et purus. Nunc dignissim felis orci, et porttitor mi scelerisque sed. Mauris quis dolor scelerisque, tincidunt metus molestie, aliquet ante.
                    </p>
                    <p>
                    Donec at semper tortor, ac vulputate nisi. Mauris tempor odio quis odio porttitor sollicitudin et eget nisi. Sed ut ligula in orci ultrices condimentum id quis ipsum. Curabitur sed auctor ligula, sit amet aliquet lacus. Donec at lectus nec lectus placerat condimentum. Etiam lorem ex, semper nec ultrices sit amet, feugiat et lacus. Duis molestie leo ac accumsan efficitur. Nulla euismod placerat justo non eleifend. Ut et sem leo. Donec non ligula id ex tincidunt porta quis at lacus. Nam porttitor nunc sem, ut facilisis arcu pulvinar et. Suspendisse sit amet molestie dolor, ut sagittis nulla.
                    </p>
                    <p>
                    Morbi semper in urna sed volutpat. Cras ornare libero vel efficitur vestibulum. Curabitur molestie ipsum ante, a sagittis arcu sodales vulputate. Integer arcu magna, mattis consequat mauris a, sagittis mattis risus. Ut at fermentum urna. Quisque pretium pulvinar nisi in congue. In imperdiet maximus lorem, vel auctor neque cursus sit amet. Maecenas ornare sit amet neque et ullamcorper. Nulla pretium, dolor vitae sagittis porta, nunc est ultricies felis, at vehicula libero tellus eu ligula. Sed eu tempor neque. Aliquam erat volutpat.
                    </p>
                    <p>
                    Nullam cursus nulla quis magna porttitor sagittis placerat at odio. Duis lobortis feugiat augue et scelerisque. Nam pellentesque tellus vitae diam suscipit convallis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean pulvinar turpis ut diam finibus, sit amet vestibulum neque congue. Nulla orci orci, mattis in ante non, ultricies efficitur nulla. Fusce eget mi laoreet, luctus arcu eu, elementum tellus. Ut id velit nulla. Aenean consequat lacus enim, id pulvinar neque auctor id. Quisque mollis neque quis neque volutpat ullamcorper. Nulla venenatis, turpis id porta maximus, elit orci euismod orci, non interdum justo quam nec mi.
                    </p>
                    <p>
                    Nulla eget justo eget ligula commodo efficitur. Nullam elementum aliquet consequat. Donec maximus vel turpis non lobortis. Duis tempus suscipit nisi vel euismod. Mauris ultricies feugiat dui quis dictum. Integer quis mi nec magna tempor feugiat nec et ipsum. Vestibulum vel mi quis augue lobortis commodo. Etiam consectetur augue mauris, at rutrum nisl dapibus in. In hac habitasse platea dictumst. Quisque porta, lorem ut condimentum aliquam, lacus lacus euismod lorem, non efficitur est nibh a ex.
                    </p>
                    <p>
                    Nunc in mattis lectus, sit amet hendrerit urna. Sed vel elementum erat. Sed eu interdum mauris, id laoreet felis. Aenean a nulla ultricies, molestie nulla eu, pellentesque nulla. Fusce sed fermentum turpis, vel porttitor lorem. Maecenas maximus pretium nisl nec rhoncus. Aenean id eleifend purus, ut condimentum ligula. Nullam vel nisl sed erat congue commodo. Fusce interdum nunc sed est viverra dictum. Nullam nec elementum mauris, ut aliquam nunc. Cras gravida varius massa, a luctus mi maximus vitae. Sed tincidunt tellus sed dui fermentum tincidunt. Sed facilisis sagittis ipsum, eu pellentesque erat condimentum vitae. Cras ut nisl euismod, blandit ligula id, pulvinar justo. Vestibulum vel lectus et tortor ullamcorper molestie. Donec nec leo sit amet tellus sollicitudin laoreet et id urna.
                    </p>
                    <p>
                    Proin finibus erat nec nibh consequat malesuada. Phasellus bibendum ultrices augue, eu accumsan quam pulvinar at. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris ante nisl, tristique at rhoncus id, hendrerit in massa. Nam turpis purus, blandit vel ultrices vel, pulvinar eget magna. Fusce vel eros et lorem eleifend tincidunt sed ut ligula. Nulla nisi mauris, gravida nec vulputate nec, tempor vel purus. Proin in arcu tristique sem consequat condimentum. Suspendisse et vestibulum lorem. Phasellus maximus at urna vitae convallis. Morbi nec dui id erat lacinia ornare sit amet sed lorem. Aenean varius convallis pharetra.
                    </p>
                    <p>
                    Aliquam dictum tortor eget velit placerat iaculis. Maecenas nisi massa, facilisis sit amet odio eget, eleifend vehicula quam. Phasellus ullamcorper quam vitae dui lacinia vulputate. Fusce sodales pulvinar ex a porttitor. Morbi quam velit, maximus vel sodales tempor, fermentum vitae justo. Donec euismod dui a ex mattis bibendum. Ut nec diam cursus, pulvinar eros non, congue leo. Nulla facilisi. Fusce volutpat eget odio vel ullamcorper.
                    </p>
                    <p>
                    Maecenas sit amet scelerisque mauris. In condimentum nisl vel rhoncus gravida. Integer est libero, varius quis facilisis a, aliquam ac nulla. Nullam ultricies tristique dolor ut varius. Maecenas posuere libero eu ipsum convallis ultricies. Vestibulum euismod diam nibh, id congue neque interdum a. Praesent ex erat, pellentesque sed mattis eu, tincidunt id magna. Fusce facilisis, libero rutrum tincidunt ullamcorper, quam purus placerat lacus, iaculis congue risus nunc eu massa. Curabitur viverra, lectus fringilla consectetur ultrices, enim neque facilisis mauris, vitae fringilla justo erat in ex. Sed at molestie velit. In gravida tempor justo, vitae commodo libero laoreet quis. Sed nec enim justo.
                    </p>
                    <p>
                    Nunc cursus tellus eu massa dignissim, id tincidunt dolor pellentesque. Curabitur rhoncus libero orci, et sodales tortor viverra vel. Praesent in mauris sed urna cursus cursus. Proin egestas erat erat, ut volutpat ipsum rutrum aliquam. In volutpat odio non venenatis dictum. Nullam gravida neque tellus, at facilisis libero imperdiet ac. Fusce finibus elit sit amet consequat consequat. Vestibulum in nunc cursus, venenatis nisl ac, semper nulla. Donec et lorem a sem suscipit bibendum in interdum mauris. Praesent mollis ligula sit amet porta congue. Pellentesque quis risus nunc.
                    </p>
                    <p>You liked this post ? Try <a routerLink="/free">this one</a>.</p>
                </div>
                <div *ngIf="!isUserPremium()" id="poool-widget"></div>
            </div>
        </div>
    """
)(
    class Premium

        @parameters: [[Router]]

        constructor: (@router) -> return

        ngOnInit: ->
            poool "event", "onSubscribeClick", @onSubscribeClick
            @sendHit()

        onSubscribeClick: (e) =>
            @router.navigate ["/subscribe"]

        onLogin: ->
            @sendHit()

        sendHit: ->
            poool "config", "user_is_premium", window.test_user?.premium ? false

            if window.test_user?.logged is true and window.test_user?.premium is true
                poool "config", "force_widget", "disabled"
                poool "config", "signature_enabled", false

            poool "send", "page-view", "premium"

        isUserPremium: ->
            window.test_user?.premium

        ngOnDestroy: ->
            poool "unevent", "onSubscribeClick", @onSubscribeClick
)

export { Premium }
