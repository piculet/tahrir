<%def name="avatar_thumbnail(person, size, cell_width)">
	<div class="grid-${cell_width} thumbnail-container">
		<div class="thumbnail thumbnail-${size}">
			<span class="tooltip" data-tooltip="${person.nickname}">
				<a href="${request.route_url('user', id=person.nickname or person.id)}">
					<img src="${person.avatar_url(size)}"/>
				</a>
			</span>
		</div>
	</div>
</%def>

<%def name="badge_thumbnail(badge, size, cell_width)">
	<div class="grid-33 thumbnail-container">
		<div class="thumbnail thumbnail-${size}">
			<span class="tooltip" data-tooltip="${badge.name} -- ${badge.description}">
				<a href="${request.route_url('badge', id=badge.id)}">
					<img class="badge"
		% if badge.image.startswith("http"):
						src="${badge.image}"
		% else:
						src="${base_url}/pngs/${badge.image}"
		% endif
						alt="${badge.id} icon" />
				</a>
			</span>
		</div>
	</div>
</%def>